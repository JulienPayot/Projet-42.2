#include <iostream>
#include <Windows.h>
#include <conio.h>
#include <string>
#include "Classe.h"

using namespace std;

int main()
{
    CPersonne Julien(100,100,25,"Julien");
    CPersonne Bob(75,75,20,"Bob");
    Julien.affiche();

    Julien.changementvie(Julien.degat(Bob.getforce()));

    Julien.affiche();
    _getch();
	return 0;
}

