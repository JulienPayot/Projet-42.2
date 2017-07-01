# Projet-42.2
Création d'un jeu communautaire, basé sur des voyages dans des mondes générés procéduralement ou l'artisanat a une place importante

## Construire l'environnement de developpement
Le projet etant cross-platform, il est necessaire de construire un environnement de developpement propre à chaques developpeurs / systeme. Avant de coder il faut d'abord compiler les librairies utilisées avec votre ... compilateur.

Premierement, clonez le depot sur votre machine.

### Build SFML ( Windows et Linux avec code::blocks )
1) Allez dans le depot du projet, puis dans les dossiers "Tools" => "CMake-win" => "bin".
2) Lancez cmake-gui.exe ( Linux : cmake-gui )
3) Dans "Where is the source code", selectionnez le dossier "Projet-42.2/Game/src/SFML".
4) Dans "Where to build the binaries", selectionnez le dossier "Projet-42.2/Game/src/SFML/build".
5) Cliquez sur "Configure", selectionnez "CodeBlocks - MinGW Makefiles" ( Linux : "CodeBlocks - Unix Makefiles" )
6) Verifiez que l'option BUILD_SHARED_LIBS est cochée, et que SFML_USE_STATIC_STD_LIBS soit decochée.
7) Dans l'option CMAKE_BUILD_TYPE ecrivez "Release"
8) Cliquez sur "Generate"
9) Allez dans le dossier "Projet-42.2/Game/src/SFML/build".
10) Ouvrez le fichier " .cbp " qui s'y trouve. Codeblocks va s'ouvrir.
11) Lancez une compilation et attendez.
12) Une fois terminée, retournez sur CMake-gui et modifiez l'option CMAKE_BUILD_TYPE en "Debug"
13) Repetez les etapes 8) 9) 10) 11)

14) SFML est maintenant compilée, pour la liée à votre projet codeblocks, suivez ce tuto => https://www.sfml-dev.org/tutorials/2.4/start-cb-fr.php
/!\ les ".a" se situent dans "Projet-42.2/Game/src/SFML/build/lib/" /!\


### Build Boost.FileSystem ( Windows )
