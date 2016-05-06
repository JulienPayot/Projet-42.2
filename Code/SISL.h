/*<===========================================================
LIB  : SISL ( SIgnal SLot)
version : 1.0
DEV : SOTON "Asphox" Dylan
Date : 06/05/2016

SISL est une petite lib qui permet de gerer le systeme signal/slot "à la Qt".
Simple et legere, elle nous sera utile pour gerer les differents evenements du jeu (que se soit pour les animations, les sons, les entrées claviers  ... )
Car hélàs SFML n'integre pas de systeme Signal/Slot, et se serait dommage de devoir installer Boost ou Qt juste pour ça.

N'hesitez pas a me contacter si vous trouver un bug, ou une amelioration possible ^w^

<!> SISL n'est PAS encore Thread-safe !!!! Mefiance si vous l'utilisez entre des threads differents ! <!>

<================================================================*/




#ifndef SISL_H
#define SISL_H

#include <vector>
#include <functional>


namespace sisl
{
    /*================================================================
            SLOT WITHOUT ARGS
      ================================================================*/
    class SLOT_0
    {
    private:
        std::function<void()> _fct;

    public:

        void attach(const std::function<void()> fct){
            _fct = fct;
        }

        template <typename F, typename... A>
        void attach(const F&& fct, const A&& ... a){
            _fct = std::bind(fct,a...);
        }

        inline void exec() const {_fct();}

    };




    /*==============================================================
            SLOT WITH 1 ARG
      ==============================================================*/
    template<typename P>
    class SLOT_1
    {
    private:

        std::function<void(P)> _fct;

    public:

        void attach(const std::function<void(P)> fct){
            _fct = fct;
        }

        template <typename F, typename... A>
        void attach(const F&& fct, const A&& ... a){
            _fct = std::bind(fct,a...,std::placeholders::_1);
        }

        inline void exec(const P param) const {_fct(param);}
    };


    /*=============================================================
        SIGNAL WITHOUT ARG
      =============================================================*/
    class SIGNAL_0  //signal without args
    {
    private:
        std::vector<const SLOT_0*> _array_slot;
    public:
        void connect(const SLOT_0* slot){
            _array_slot.push_back(slot);
        }
        void disconnect(const SLOT_0* slot){
            size_t i=0;
            while(_array_slot[i] != slot && i<_array_slot.size())i++;
            if(i<_array_slot.size())_array_slot.erase(_array_slot.begin()+i);
        }
        void disconnect_all(){
            _array_slot.clear();
        }
        void emit() const {
            for(size_t i=0;i<_array_slot.size();i++)
                _array_slot[i]->exec();
        }
    };

    /*================================================================
        SIGNAL WITH 1 ARG
      ================================================================*/
    template<typename P>
    class SIGNAL_1          //signal with 1 arg
    {
    private:
        std::vector<SLOT_1<P>*> _array_slot;
    public:

        void connect(SLOT_1<P>* slot){
            _array_slot.push_back(slot);
        }

        void disconnect(SLOT_1<P>* slot){
            size_t i=0;
            while(_array_slot[i] != slot && i<_array_slot.size())i++;
            if(i<_array_slot.size())_array_slot.erase(_array_slot.begin()+i);
        }
        void disconnect_all(){
            _array_slot.clear();
        }
        void emit(const P param) const {
            for(size_t i=0;i<_array_slot.size();i++)
                _array_slot[i]->exec(param);
        }

    };

    /*==================================================================
        CONNECT FUNCTIONS
      ==================================================================*/

    void connect(SIGNAL_0* sig, SLOT_0* slot){
        sig->connect(slot);
    }
    template<typename P>
    void connect(SIGNAL_1<P>* sig, SLOT_1<P>* slot){
        sig->connect(slot);
    }
    void disconnect(SIGNAL_0* sig, SLOT_0* slot){
        sig->disconnect(slot);
    }
    template<typename P>
    void disconnect(SIGNAL_1<P>* sig, SLOT_1<P>* slot){
        sig->disconnect(slot);
    }

}

#endif // SISL_H
