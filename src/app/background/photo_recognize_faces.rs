// SPDX-FileCopyrightText: © 2024 David Bliss
//
// SPDX-License-Identifier: GPL-3.0-or-later

use relm4::prelude::*;
use relm4::Worker;
use relm4::Reducer;
use rayon::prelude::*;
use anyhow::*;
use std::sync::Arc;
use std::result::Result::Ok;
use std::path::PathBuf;
use tracing::{error, info};

use fotema_core::machine_learning::face_recognizer::FaceRecognizer;
use fotema_core::people;
use fotema_core::people::model::{PersonForRecognition, DetectedFace};

use crate::app::components::progress_monitor::{
    ProgressMonitor,
    ProgressMonitorInput,
    TaskName,
};


#[derive(Debug)]
pub enum PhotoRecognizeFacesInput {
    Start,
}

#[derive(Debug)]
pub enum PhotoRecognizeFacesOutput {
    // Face recognition has started.
    Started,

    // Face recognition has completed
    Completed,

}

#[derive(Clone)]
pub struct PhotoRecognizeFaces {
    // Danger! Don't hold the repo mutex for too long as it blocks viewing images.
    repo: people::Repository,

    progress_monitor: Arc<Reducer<ProgressMonitor>>,

    cache_dir: PathBuf,
}

impl PhotoRecognizeFaces {

    fn recognize(&self, sender: ComponentSender<Self>) -> Result<()>
     {
        let start = std::time::Instant::now();

        let people: Vec<PersonForRecognition> = self.repo
            .find_people_for_recognition()?
            .into_iter()
            .collect();

         info!("Found {} people as candidates for face recognition", people.len());

        // Short-circuit before sending progress messages to stop
        // banner from appearing and disappearing.
        if people.is_empty() {
            let _ = sender.output(PhotoRecognizeFacesOutput::Completed);
            return Ok(());
        }

        let min_recognized_at = people.iter().map(|x| x.recognized_at).min().unwrap();

        let unprocessed: Vec<DetectedFace> = self.repo.find_unknown_faces()?
            .into_iter()
            .filter(|unknown_face| unknown_face.detected_at > min_recognized_at)
            .collect();

        if unprocessed.is_empty() {
            let _ = sender.output(PhotoRecognizeFacesOutput::Completed);
            return Ok(());
        }

        let _ = sender.output(PhotoRecognizeFacesOutput::Started);
        self.progress_monitor.emit(ProgressMonitorInput::Start(TaskName::RecognizeFaces, unprocessed.len()));

        let recognizer = FaceRecognizer::build(&self.cache_dir, people.clone())?;

        unprocessed
            //.into_iter()
            .into_par_iter()
            .for_each(|unknown_face| {
                // FIXME unwrap
                let is_match = recognizer.recognize(&unknown_face);
                if let Ok(Some(person_id)) = is_match {
                    info!("Face {} looks like person {}", unknown_face.face_id, person_id);
                    let mut repo = self.repo.clone();
                    let result = repo.mark_as_person_unconfirmed(unknown_face.face_id, person_id);
                    if let Err(e) = result {
                        error!("Failed marking face {} as person: {:?}", unknown_face.face_id, e);
                    }
                }

                self.progress_monitor.emit(ProgressMonitorInput::Advance);
            });

        let mut repo = self.repo.clone();
        for person in people {
            if let Err(e) = repo.mark_face_recognition_complete(person.person_id) {
                error!("Failed marking face recognition complete for person {}: {:?}", person.person_id, e);
            }
        }

        info!("Recognized people in {} seconds.", start.elapsed().as_secs());

        self.progress_monitor.emit(ProgressMonitorInput::Complete);

        let _ = sender.output(PhotoRecognizeFacesOutput::Completed);

        Ok(())
    }
}

impl Worker for PhotoRecognizeFaces {
    type Init = (PathBuf, people::Repository, Arc<Reducer<ProgressMonitor>>);
    type Input = PhotoRecognizeFacesInput;
    type Output = PhotoRecognizeFacesOutput;

    fn init((cache_dir, repo, progress_monitor): Self::Init, _sender: ComponentSender<Self>) -> Self  {
        PhotoRecognizeFaces {
            cache_dir,
            repo,
            progress_monitor,
        }
    }

    fn update(&mut self, msg: Self::Input, sender: ComponentSender<Self>) {
        match msg {
            PhotoRecognizeFacesInput::Start => {
                info!("Recognizing photo faces...");
                let this = self.clone();

                // Avoid runtime panic from calling block_on
                rayon::spawn(move || {
                    if let Err(e) = this.recognize(sender) {
                        error!("Failed to recognize photo faces: {}", e);
                    }
                });
            }
        };
    }
}
