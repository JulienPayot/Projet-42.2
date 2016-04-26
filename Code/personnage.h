#include <string>
using namespace std;


    class CPersonne{
    public:
        CPersonne(unsigned short vie1,unsigned short force1,unsigned short defense1,string nom1);       //constructeur
        void affiche(void);                                                                 //récupère les attribut de CPersonne
        bool changementvie (unsigned short vie1);                                            //change la vie de CPersonne, si <0 renvoie 1 car mort
        bool estVivant ();                                                                  // Vivant ou mort
        unsigned short degat (unsigned short force1);                                       //calcul des dégats : force ennemie-defense=vie perdu
        unsigned short getvie();
        unsigned short getforce();
        unsigned short getdefense();
        string getnom();

    private:

        string nom;
        unsigned short vie;
        unsigned short force;
        unsigned short defense;

};


