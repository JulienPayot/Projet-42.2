#include <iostream>
#include <Windows.h>
#include <conio.h>
#include <string>
#include "personnage.h"
using namespace std;

    CPersonne::CPersonne(unsigned short vie1=0,unsigned short force1=0,unsigned short defense1=0,string nom1="sansNom"){
        vie=vie1;
        force=force1;
        defense=defense1;
        nom=nom1;
    }
    void CPersonne::affiche(void){

        cout<<"\nNom="<<nom<<"\nvie="<<vie<<"\nforce="<<force<<"\ndefense="<<defense;
    }
    bool CPersonne::changementvie (unsigned short vie1){
        vie=vie-vie1;
        return 0;
    }
    unsigned short CPersonne::degat (unsigned short force1){
        unsigned short vie1=0;
        vie1=force1-defense;
        return vie1;
    }
    unsigned short CPersonne::getvie(){
        return vie;
    }
    unsigned short CPersonne::getforce(){
        return force;
    }
    unsigned short CPersonne::getdefense(){
        return defense;
    }
    string CPersonne::getnom(){
        return nom;
    }
