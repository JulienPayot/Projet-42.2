
/*======================================================================
Classe IsoMap pour le projet 42.2
Actuelement : Gère le  chargement de la map depuis un fichier.
Objectif : Gèrer la map et les textures des chunks pour le moteur graphique 2D isometrique

DEV : SOTON 'Asphox' Dylan
DATE : 26/04/2016
VERSION : 0.1 | C++11 | SFML 2.3.2
========================================================================*/



#include "IsoMap.h"

CIsoMap::CIsoMap(){    //constructeur
    _mapFile = nullptr;
    _errorLog = "";
    _sizeFile = 0;
}

CIsoMap::~CIsoMap(){  //destructeur
    delete _mapFile;
}

bool CIsoMap::load(const std::string mapPath){  //chargement de la map depuis le fichier vers le tableau de chunk

    _errorLog = "";

    _mapFile = new std::ifstream(mapPath,std::ios::binary); //ouverture du fichier en mode binaire pour ignorer les char speciaux
    if(_mapFile == nullptr) //si le fichier n'existe pas : on annule le chargement
    {
        _errorLog = __ERR_FILE_NOT_FOUND;
        return false;
    }

    _mapFile->seekg(0,std::ios::end); //on se place a la fin du fichier
    _sizeFile = _mapFile->tellg(); //on recupere le nombre d'octet et donc la taille du fichier
    _mapFile->seekg(0,std::ios::beg); //on se replace au debut du fichier
    if(_sizeFile % 2 != 1 || _mapFile->get() != 0x2A)  // si il y a un nombre paire d'octet => on annule le chargement de la map | + check du nombre magique 0x2A = 42
    {
        delete _mapFile;
        _mapFile = nullptr;
        _errorLog = __ERR_FILE_CORRUPTED;
        return false;
    }

    _sizeX = _mapFile->get(); //on recpuere les dimensions de la map
    _sizeY = _mapFile->get();


    _array_chunks.resize(_sizeX);

    uint8_t LByte,HByte;
    uint16_t chunk;
    for(size_t x=0;x<_sizeX;x++) //puis chaque chunk 1 par 1
    {
        _array_chunks[x].resize(_sizeY);
        for(size_t y=0;y<_sizeY;y++)
        {
            HByte = _mapFile->get();
            LByte = _mapFile->get();
            chunk = (HByte << 8) + LByte; //astute pour convertir 2 uint8 en 1 uint16
            _array_chunks[x][y] = chunk;
        }
    }
    delete _mapFile; //on detruit l'objet pointer par _mapFile pour liberer de la memoire maintenant inutile
    _mapFile = nullptr; //et on met le pointeur a "nullptr" par securité
    return true;
}

std::vector<std::vector<uint16_t>> CIsoMap::getChunksArray(){
    return this->_array_chunks;
}

uint16_t CIsoMap::getChunkAt(const uint8_t X,const uint8_t Y){
    return this->_array_chunks[X][Y];
}

uint16_t CIsoMap::getNbrOfChunk(){
    return _sizeX*_sizeY;
}

uint8_t CIsoMap::getSizeX(){
    return this->_sizeX;
}

uint8_t CIsoMap::getSizeY(){
    return this->_sizeY;
}

std::string CIsoMap::getError(){
    return this->_errorLog;
}

uint16_t CIsoMap::getFileSizeBytes(){
    return this->_sizeFile;
}
