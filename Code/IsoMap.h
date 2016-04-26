



/*======================================================================
Classe IsoMap pour le projet 42.2
Actuelement : Gère le  chargement de la map depuis un fichier.
Objectif : Gèrer la map et les textures des chunks pour le moteur graphique 2D isometrique

DEV : SOTON 'Asphox' Dylan
DATE : 26/04/2016
VERSION : 0.1 | C++11 | SFML 2.3.2
========================================================================*/

#include <iostream>
#include <vector>
#include <fstream>

class CIsoMap
{
    private:
        /*<======STRINGS D'ERREURS =========>*/
        const char* __ERR_FILE_CORRUPTED = "<!>File is corrupted <!>";
        const char* __ERR_FILE_NOT_FOUND = "<!>File not found <!>";

        /*<====== ATTRIBUTS ===========>*/
        std::vector<std::vector<uint16_t>> _array_chunks; //tableau dynamique contenant les identifiants de chaques chunks sur la map
        std::istream *_mapFile; //pointeur sur un flux d'entré sur le fichier de la map
        uint16_t _sizeFile;     //taille du fichier en octets
        uint8_t _sizeX,_sizeY; //taille de la map chargé ( max 255x255 chunks)
        std::string _errorLog; //variable contenant la derniere erreur


    public:

        /*<======= METHODES =======>*/
        CIsoMap();
        ~CIsoMap();
        bool load(const std::string mapPath); //charge un fichier map
        std::vector<std::vector<uint16_t>> getChunksArray(); //renvoi une copie du tableau de chunk
        uint16_t getChunkAt(const uint8_t X,const uint8_t Y);   //recuperer l'identifiant du chunk à la position X,Y
        uint16_t getNbrOfChunk();   //recuperer le nombre total de chunk
        uint8_t getSizeX();     //recuperer la taille X du tableau de chunk
        uint8_t getSizeY();     //recuperer la taille Y du tableau de chunk
        uint16_t getFileSizeBytes();    //recuperer la taille du fichier map en octets
        std::string getError();     //recuperer le string d'erreur en cas .... d'erreur ^^

};
