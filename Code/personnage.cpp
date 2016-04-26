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
    bool CPersonne::changementVie (unsigned short vie1){
        vie=vie-vie1;
        return estVivant; //après le changement de vie on vérifie si le joueur est mort ou non (renvoie 0 si mort)
    }
    bool CPersonne::estVivant(){
        if (vie > 0) //Plus de 0 de vie 
        {
            return true; 
        }
        else
        {
            return false; 
        }
    }
    
    unsigned short CPersonne::degat (unsigned short force1){
        unsigned short vie1=0;
        vie1=force1-defense;
        return vie1;
    }
    unsigned short CPersonne::getVie(){
        return vie;
    }
    unsigned short CPersonne::getForce(){
        return force;
    }
    unsigned short CPersonne::getDefense(){
        return defense;
    }
    string CPersonne::getNom(){
        return nom;
    }
