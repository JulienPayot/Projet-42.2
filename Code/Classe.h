#include <string>
using namespace std;
class CObjet{
    public:

    private:

};

    class CPersonne{
    public:
        CPersonne(unsigned short vie1,unsigned short force1,unsigned short defense1,string nom1);       //constructeur
        void affiche(void);                                                                 //r�cup�re les attribut de CPersonne
        bool changementvie (unsigned short vie1);                                           //change la vie de CPersonne, si <0 renvoie 1 car mort
        unsigned short degat (unsigned short force1);                                       //calcul des d�gats : force ennemie-defense=vie perdu
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


