## Chronophoto
Recherche de solutions libres pour créer des chronophotographies. 
### Un choix initial: partir d'une vidéo
Les APN ont les capacités d'enregistrer des vidéos avec une définition suffisante pour disposer d'images de qualité intéressante.

Il s'agit donc de transformer les vidéos en autant d'images que nécessaires. La solution retenue est la librairie ffmpeg.
* https://ffmpeg.org/
* https://ffmpeg.org/ffmpeg.html
* https://trac.ffmpeg.org/wiki/Encode/MPEG-4

### Une nécessité: fusionner les images
La création d'une chronophotographie nécessite la superposition des différentes images issues de la vidéo. La solution retenue est la librairie ImageMagick.
* https://imagemagick.org/
* https://imagemagick.org/script/convert.php
* https://imagemagick.org/script/command-line-options.php#evaluate-sequence

### Première approche : en ligne de commande
#### Extraction des images d'un fichier mp4
``` shell
ffmpeg -i P1010466Trim.mp4 -qscale:v 2 image-%04d.jpeg
```
#### Fusion de 2 images
``` shell
magick convert image-0001.jpeg image-0002.jpeg -evaluate-sequence Min result.jpg
```
### Le résultat

https://www.flickr.com/photos/149587191@N04/albums/72157714930013542
