# Charte de programation

Version : 1.0
Author : SOTON "Asphox" Dylan

## conventions 
-mot clé NULL interdit, remplacez le par nullptr
-cast C-style interdit, utilisez static_cast / const_cast / dynamic_cast / reinterpret_cast
-tableau C-style a eviter, utilisez les conteneurs de la STL
-pas de using namespace excepté pour la STL ( std ), on garde l'operateur de porté partout.
-les "struct" doivent etre utilisées comme en C ( rassemblement de variables ), elles ne doivent donc pas contenir de methodes.
-preferez les pointeurs inteligents aux pointeurs "brut" ( int* )
-on ne commente pas dans un .cpp ! excepté pour une section de code complexe.
-limitez les macros au maximum
-une methode qui ne modifie pas la class doit etre marqué "const" ( void maFonction() const; )
-une methode qui ne modifie pas les parametres doit les recuperer en "const" ( void maFonction( const int param ); )
-preferez le passage par reference ( constante ou non ) plutot qu'un passage par copie pour les types "lourds"
    exemple : void maFonction( const std::string& machaine );
-une methode qui ne fait qu'une operation doit etre "inlinée"
    exemple : inline void maFonction(){ un truc; }
- interdiction d'utiliser l'operateur "?" pour cause d'illisibilité.



## Noms des fichiers
headers : NomDeMonHeader.hpp
source : NomDeMonSource.cpp
template : NomDeMonTemplate.tpp

## Noms des differents composants
class/Struct/Enum : MaClass
fonction membre public :    maJolieFonction
fonction membre privée :    m_maJolieFonction
attribut public :           monAttribut
attribut privé :            m_monAttribut
template :                  MONTEMPLATE
pointeur :                  type* monPointeur;
reference :                 type& maReference;
macro :                     MAMACRO

## Commentaires
Pour chaques fonctions dans les headers, avec description du but de la fonction
des parametres, et de la valeur de retour.

En general, les commentaires doivent toujours etre fait avec // et non /*  */

```cpp
///////////////////////////////////////////////
// \brief petite description de la fonction
//  sur plusieurs lignes.
//
//  \param descriptions des parametres
//
//  \return description de la valeur de retour
////////////////////////////////////////////////
retour MaClass::maFonction(type1 param1, type2 param2);
```


## Headers

```cpp
#ifndef NOM_DE_MON_HEADER_HPP
#define NOM_DE_MON_HEADER_HPP

/*==========================
  INCLUDES
  ==========================*/
  #include <moninclude1.hpp>
  #include "moninclude2.hpp"
  
  /*========================
    CLASS
    ========================*/
    
    class MaClass
    {
       public:
       
       private:
    };
    
#endif //NOM_DE_MON_HEADER_HPP
```
## Bloc d'instruction
### while
Si le code tient sur plusieurs lignes : 
```cpp
while( condition )
{
  code....
  code...
}
```
sur une ligne : 
```cpp
while( condition )
  code...
```
### if ... else if ... else
sur plusieurs lignes : 
```cpp
if( condition )
{
  code...
  code...
}
else
{
  code...
  code...
}
```
une seul ligne : 
```cpp
if( condition )
  code...
else
  code...
  
//ou

if( condition ) code...
else if( condition ) code...
else if( condition ) code...
else  code...
```
N'oubliez pas d'utiliser les switch case si possible si la condition porte sur des caracteres ou des nombres.

##for
classique plusieurs lignes: 
```cpp
for( unsigned int i = 0 ; i < X ; i++ )
{
  code...
  code...
}
```
classique simple ligne: 
```cpp
for( unsigned int i = 0 ; i < X ; i++ )
  code...
```
pour parcourir des conteneur STL, utilisez : 
```cpp
for( const auto& it : mon_conteneur )
{
  code...
}

```

