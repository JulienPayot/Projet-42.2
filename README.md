# Projet-42.2
Création d'un jeu communautaire, basé sur des voyages dans des mondes générés procéduralement ou l'artisanat a une place importante

## Construire l'environnement de developpement
Le projet etant cross-platform, il est necessaire de construire un environnement de developpement propre à chaques developpeurs / systeme. Avant de coder il faut d'abord compiler les librairies utilisées avec votre ... compilateur.

Premierement, clonez le depot sur votre machine.

### Preliminaires Linux
Installez les paquets suivant : 
```shell
sudo apt-get install build-essential cmake git libx11-dev freeglut3-dev libxcb-image0-dev libudev-dev libjpeg8-dev libopenal-dev libsndfile1-dev libfreetype6-dev
```

### Preliminaires Windows
Ajoutez votre compilateur au PATH :
1) Allez dans "Systeme"
2) Modifiez les parametres -> Parametres avancés -> Variables d'environnement
3) cliquez sur "nouvelle"
4) Nom de la variable : "mingw" | valeur de la variable : C:/CodeBlocks/MinGW/bin
5) Redemarrez

### Build SFML-SISL ( Windows et Linux avec code::blocks )
1) Allez dans le depot du projet, puis dans les dossiers "Tools" => "CMake-win" ( Linux : "CMake-lin" ) => "bin".
2) Lancez cmake-gui.exe ( Linux : cmake-gui )
3) Allez dans File et cliquez sur "Delete cache"
4) Dans "Where is the source code", selectionnez le dossier "Projet-42.2/Game/src/SFML".
5) Dans "Where to build the binaries", selectionnez le dossier "Projet-42.2/Game/src/SFML/build".
6) Cliquez sur "Configure", selectionnez "CodeBlocks - MinGW Makefiles" ( Linux : "CodeBlocks - Unix Makefiles" )
7) Verifiez que l'option BUILD_SHARED_LIBS est cochée, et que SFML_USE_STATIC_STD_LIBS soit decochée.
8) Dans l'option CMAKE_BUILD_TYPE ecrivez "Release"
9) Cliquez sur "Generate"
10) Allez dans le dossier "Projet-42.2/Game/src/SFML/build".
11) Ouvrez le fichier " .cbp " qui s'y trouve. Codeblocks va s'ouvrir.
12) Lancez une compilation et attendez.
13) Une fois terminée, retournez sur CMake-gui et modifiez l'option CMAKE_BUILD_TYPE en "Debug"
14) Repetez les etapes 9) 10) 11) 12)

14) SFML est maintenant compilée, pour la liée à votre projet codeblocks, suivez ce tuto => https://www.sfml-dev.org/tutorials/2.4/start-cb-fr.php
/!\ les ".a" se situent dans "Projet-42.2/Game/src/SFML/build/lib/" /!\
