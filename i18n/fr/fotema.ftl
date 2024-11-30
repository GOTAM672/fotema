## Terms

-app-name = Fotema

## Main Navigation Pages

# Title for album showing contents of one folder.
folder-album = Dossier
# Main Navigation Pages
# Title for places page which shows photos overlayed onto a map.
places-page = Emplacements
# About Dialog
# Section header for open source projects acknowledgements.
about-opensource = Projets à code ouvert
# Photo/Video Viewer
# Tooltip for (i) button to show photo/video information sidebar
viewer-info-tooltip = Afficher les propriétés
# Photo/Video Viewer
# Play or pause a video button.
# Attributes:
#  .tooltip - Tooltip on mouse hover.
viewer-play =
    .tooltip = Lecture/Pause
# Photo/Video Viewer
# Skip video forwards 10 seconds button.
# Attributes:
#  .tooltip - Tooltip on mouse hover.
viewer-skip-forward-10-seconds =
    .tooltip = Avancer de 10 secondes
# Photo/Video Viewer
# Mute or unmute audio of a video.
# Attributes:
#  .tooltip - Tooltip on mouse hover.
viewer-mute =
    .tooltip = Muet/Sonore
# Photo/Video Viewer
# Button to convert all incompatible videos.
viewer-convert-all-button = Convertir toutes les vidéos incompatibles
# Photo/Video Viewer
# Viewer failed to load an image or video.
viewer-error-failed-to-load = Échec du chargement
# Photo/Video Viewer
# Viewer could not display an image or video because it is missing.
# Variables:
#  file_name - (String) path of missing file.
viewer-error-missing-file =
    Impossible d’afficher le fichier, il manque :
    { $file_name }
# Photo/Video Information Sidebar
# Name of containing folder of photo or video being viewed.
# Attributes:
#  .tooltip - tooltip text for open folder action button.
infobar-folder = Dossier
    .tooltip = Ouvrir le dossier contenant
# Photo/Video Information Sidebar
# File creation timestamp from file system metadata.
infobar-file-created = Créé le
# Photo/Video Information Sidebar
# File modification timestamp from file system metadata.
infobar-file-modified = Modifié le
# Photo/Video Information Sidebar
# File size file system metadata.
infobar-file-size = Taille du fichier
# Photo/Video Information Sidebar
# File format, such as "JPEG" or "PNG".
infobar-file-format = Format
# Photo/Video Information Sidebar
# File creation timestamp from image or video embedded metadata.
infobar-originally-created = Créé à l'origine le
# Photo/Video Information Sidebar
# File modification timestamp from image or video embedded metadata.
infobar-originally-modified = Modifié à l'origine le
# Photo/Video Information Sidebar
# Audio codec, such as "OPUS".
infobar-audio-codec = Codec audio
# Photo/Video Information Sidebar
# Width and height of photo or video.
infobar-dimensions = Dimensions
# Progress bar for background tasks
# Extracting details from photo EXIF data
progress-metadata-photos = Traitement des métadonnées des photos.
# Progress bar for background tasks
# Extracting details from video container metadata
progress-metadata-videos = Traitement des métadonnées des vidéos.
# Progress bar for background tasks
# Transcoding videos to a compatible format
progress-convert-videos = Conversion des vidéos.
# Notification banner for background tasks
# Scanning file system for new photos
banner-scan-photos = Recherche de photos dans le système de fichiers.
# Notification banner for background tasks
# Generating thumbnails for all photos.
banner-thumbnails-photos = Génération des vignettes des photos. Cela peut prendre du temps.
# Main Navigation Pages
# Title for years album.
years-album = Année
# Main Navigation Pages
# Title for months album.
months-album = Mois
# Main Navigation Pages
# Title for album of selfies.
selfies-album = Portraits
# Main Navigation Pages
# Title for library page, which contains the "all", "months", and "years" pages.
library-page = Bibliothèque
# Main Navigation Pages
# Title for all photos/videos album.
all-album = Jour
# Main Navigation Pages
# Title for video album.
videos-album = Vidéos
# Main Navigation Pages
# Title for album of iOS live photos and Android motion photos.
animated-album = Animé
# Main Navigation Pages
# Title for album showing all folders.
folders-album = Dossiers
# Photo/Video Viewer
# Convert all incompatible videos description.
viewer-convert-all-description = Cette vidéo doit être convertie avant d’être lue. Cela peut prendre du temps mais ne sera plus nécessaire par la suite.
# Photo/Video Viewer
# Viewer could not display a file because database entry doesn't have file path.
# If this situation occurs, then I've mucked up the SQL view query and a bug should
# be raised.
viewer-error-missing-path = Chemin de fichier non présent dans la base de données
# Thumbnail decorations
# Label on month album thumbnails.
# Variables:
#   $month - month number (1 through 12).
#   $year - year e.g., 2024
# Translator note: do not values in square brackets, such as '[other]'.
month-thumbnail-label =
    { $month ->
        [1] Janvier { $year }
        [2] Février { $year }
        [3] Mars { $year }
        [4] Avril { $year }
        [5] Mai { $year }
        [6] Juin { $year }
        [7] Juillet { $year }
        [8] Août { $year }
        [9] Septembre { $year }
        [10] Octobre { $year }
        [11] Novembre { $year }
        [12] Décembre { $year }
       *[other] { $year }
    }
# Photo/Video Viewer
# Go to next button when viewing photo or video.
# Attributes:
#  .tooltip - Tooltip on mouse hover.
viewer-next =
    .tooltip = Suivant
# Photo/Video Viewer
# Go to previous button when viewing photo or video.
# Attributes:
#  .tooltip - Tooltip on mouse hover.
viewer-previous =
    .tooltip = Précédent
# Photo/Video Viewer
# Skip video backwards 10 seconds button.
# Attributes:
#  .tooltip - Tooltip on mouse hover.
viewer-skip-backwards-10-seconds =
    .tooltip = Reculer de 10 secondes
# About Dialog
# Translator note: add one translator per-line to get a translation
# credit in the Fotema's "About" page.
about-translator-credits = Irénée Thirion <irenee.thirion@e.email>
# Notification banner for background tasks
# Generating thumbnails for all videos.
banner-thumbnails-videos = Génération des vignettes des vidéos. Cela peut prendre du temps.
# Photo/Video Information Sidebar
# File name of photo or video
infobar-file-name = Nom du fichier
# Preferences
# Title of preferences dialog
prefs-title = Préférences
# Photo/Video Information Sidebar
# Video codec, such as "AV1".
infobar-video-codec = Codec vidéo
# Progress bar for background tasks
# Generating thumbnails from photos
progress-thumbnails-photos = Vignettage des photos
# Photo/Video Information Sidebar
# Duration (HH:MM) of video.
infobar-video-duration = Durée
# Photo/Video Information Sidebar
# Video container format, such as "MKV" or "QuickTime".
infobar-video-container-format = Format conteneur
# Preferences
# Title of section of preferences for views
prefs-views-section = Vues
    .description = Afficher ou masquer la vue latérale
# Preferences
# Selfies page enabled or disabled.
# Attributes:
#   .subtitle - Description of toggle button action action.
prefs-views-selfies = Portraits
    .subtitle = Afficher une vue séparée pour les selfies pris sur les appareils iOS. Redémarrez { -app-name } pour appliquer ce paramètre.
# Progress bar for background tasks
# Extracting motion photo videos
progress-motion-photo = Traitement des photos animées.
# Progress bar for background tasks
# Generating thumbnails from videos
progress-thumbnails-videos = Vignettage des vidéos
# Progress bar for background tasks
# Not doing any background work
progress-idle = Repos.
# Notification banner for background tasks
# Scanning file system for new videos
banner-scan-videos = Recherche de vidéos dans le système de fichiers.
# Notification banner for background tasks
# Processing new photos to extract metadata from EXIF tags.
banner-metadata-photos = Traitement des métadonnées des photos.
# Notification banner for background tasks
# Processing new videos to extract metadata from video container.
banner-metadata-videos = Traitement des métadonnées des vidéos.
# Notification banner for background tasks
# Updating the database to remove details of absent photos.
banner-clean-photos = Maintenance de la base de données des photos.
# Notification banner for background tasks
# Updating the database to remove details of absent videos.
banner-clean-videos = Maintenance de la base de données des vidéos.
# Primary menu
# Menu item to show "about" dialog
primary-menu-about = À propos de { -app-name }
# Primary menu
# Menu item to show preferences dialog
primary-menu-preferences = Préférences
# Notification banner for background tasks
# Extracting video component from Android motion photos
banner-extract-motion-photos = Traitement des photos animées.
prefs-views-faces = Détection des visages
    .subtitle = Activer la détection des visages au lancement de Fotema. Ce processus prend du temps.
people-face-ignore = Ignorer
people-person-search =
    .placeholder = Nom de la personne
people-not-this-person = Pas { $name }
progress-detect-faces-photos = Détection des visages dans les photos.
progress-recognize-faces-photos = Reconnaissance des personnes dans les photos.
person-delete-dialog =
    .heading = Supprimer la personne ?
    .body = Aucune photo ou vidéo ne sera supprimée.
    .cancel-button = Annuler
    .delete-button = Supprimer
people-page = Personnes
people-page-status-off =
    .title = Activer la détection des visages ?
    .description = { -app-name } peut détecter automatiquement les visages et reconnaître les personnes sur vos photos, mais ce processus peut prendre du temps. Souhaitez-vous activer cette fonctionnalité ?
    .notice = { -app-name } doit télécharger à peu près 45 Mo. de données pour reconnaître les visages et les personnes.
    .enable = Activer
people-page-status-no-people =
    .title = Aucune personne identifiée
    .description =
        { -app-name } recherchera des visages dans vos nouvelles photos à la prochaine ouverture.
        Nommez les personnes figurant dans vos photos pour que { -app-name } puisse faire un album pour chacune.
viewer-faces-menu =
    .tooltip = Menu des visages
    .restore-ignored = Restaurer tous les visages ignorés
    .ignore-unknown = Ignorer tous les visages inconnus
    .scan = Rechercher plus de visages
people-set-face-thumbnail = Utiliser comme vignette
people-set-name = Nommer
banner-detect-faces-photos = Détection des visages dans les photos. Cela prendra du temps.
banner-recognize-faces-photos = Reconnaissance des personnes dans les photos. Cela prendra du temps.
person-menu-rename = Renommer la personne
person-menu-delete = Supprimer la personne
person-rename-dialog =
    .heading = Renommer la personne ?
    .placeholder = Nouveau nom
    .cancel-button = Annuler
    .rename-button = Renommer
prefs-ui-section = Interface
    .description = Personnalisez l’interface utilisateur.
prefs-ui-selfies = Portraits
    .subtitle = Affiche un album à part pour les selfies pris sur les appareils iOS. Redémarrez { -app-name } pour appliquer ce paramètre.
prefs-machine-learning-face-detection = Détection des visages
    .subtitle = Activer la détection des visages au lancement de { -app-name }. Ce processus peut prendre du temps.
banner-button-stop =
    .label = Arrêter
    .tooltip = Arrêter toutes les tâches en arrière-plan.
banner-stopping = Arrêt des tâches…
banner-convert-videos = Conversion des vidéos.
prefs-ui-chronological-album-sort = Ordre de tri
    .subtitle = Ordre chronologique des albums.
    .ascending = Croissant
    .descending = Décroissant
prefs-machine-learning-section = Apprentissage automatique
    .description = Configurer les fonctions d’apprentissage automatique.
prefs-library-section =
    .title = Bibliothèque
    .description =
        Configurer le répertoire de la bibliothèque.
        Avertissement : un changement du répertoire de votre bibliothèque entraînera un nouveau traitement de toutes vos images par { -app-name }.
prefs-library-section-pictures-dir =
    .title = Répertoire d’images
    .tooltip = Choisissez un répertoire d’images.
onboard-select-pictures =
    .title = Bienvenue dans { -app-name }.
    .description =
        Veuillez sélectionner le répertoire où vous conservez votre bibliothèque d’images.

        Si vous utilisiez une version plus ancienne de { -app-name } où votre bibliothèque était automatiquement détectée, sélectionnez le même répertoire pour éviter un duplicata du traitement d’images.
    .button = Sélectionner un répertoire
