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

    Julien.changementVie(Julien.degat(Bob.getForce()));

    Julien.affiche();
    _getch();
	return 0;
}

