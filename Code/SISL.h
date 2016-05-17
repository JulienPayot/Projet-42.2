/*<===========================================================
LIB  : SISL ( SIgnal SLot)
version : 1.1

ajouts 1.1 =>
    -ajout de SIGNAL_2 et SLOT_2
    -ajout d'une verification avant d'appeler un slot en interne ( verification que le slot est bien attaché a une fonction )
    -ajout d'une methode "detach" qui retire la fonction attacher au slot

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
        bool _attached;
    public:
        SLOT_0(){ _attached = false; }

        void attach(const std::function<void()> fct){
            _attached = true;
            _fct = fct;
        }

        template <typename F, typename... A>
        void attach(const F&& fct, const A&& ... a){
            _attached = true;
            _fct = std::bind(fct,a...);
        }

        void detach(){
            _attached = false;
        }

        inline void exec() const {if(_attached)_fct();}

    };




    /*==============================================================
            SLOT WITH 1 ARG
      ==============================================================*/
    template<typename P>
    class SLOT_1
    {
    private:

        std::function<void(P)> _fct;
        bool _attached;
    public:
        SLOT_1(){ _attached = false; }

        void attach(const std::function<void(P)> fct){
            _attached = true;
            _fct = fct;
        }

        template <typename F, typename... A>
        void attach(const F&& fct, const A&& ... a){
            _attached = true;
            _fct = std::bind(fct,a...,std::placeholders::_1);
        }

        void detach(){
            _attached = false;
        }

        inline void exec(const P param) const {if(_attached)_fct(param);}
    };

    /*==============================================================
            SLOT WITH 2 ARG
      ==============================================================*/
    template<typename P1,typename P2>
    class SLOT_2
    {
    private:

        std::function<void(P1,P2)> _fct;
        bool _attached;
    public:
        SLOT_2(){ _attached = false; }

        void attach(const std::function<void(P1,P2)> fct){
            _attached = true;
            _fct = fct;
        }

        template <typename F, typename... A>
        void attach(const F&& fct, const A&& ... a){
            _attached = true;
            _fct = std::bind(fct,a...,std::placeholders::_1,std::placeholders::_2);
        }

        void detach(){
            _attached = false;
        }

        inline void exec(const P1 param1,const P2 param2) const {if(_attached)_fct(param1,param2);}
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

    /*================================================================
        SIGNAL WITH 2 ARG
      ================================================================*/
    template<typename P1, typename P2>
    class SIGNAL_2          //signal with 1 arg
    {
    private:
        std::vector<SLOT_2<P1,P2>*> _array_slot;
    public:

        void connect(SLOT_2<P1,P2>* slot){
            _array_slot.push_back(slot);
        }

        void disconnect(SLOT_2<P1,P2>* slot){
            size_t i=0;
            while(_array_slot[i] != slot && i<_array_slot.size())i++;
            if(i<_array_slot.size())_array_slot.erase(_array_slot.begin()+i);
        }
        void disconnect_all(){
            _array_slot.clear();
        }
        void emit(const P1 param1,const P2 param2) const {
            for(size_t i=0;i<_array_slot.size();i++)
                _array_slot[i]->exec(param1,param2);
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
    template<typename P1, typename P2>
    void connect(SIGNAL_2<P1,P2>* sig, SLOT_2<P1,P2>* slot){
        sig->connect(slot);
    }
    void disconnect(SIGNAL_0* sig, SLOT_0* slot){
        sig->disconnect(slot);
    }
    template<typename P>
    void disconnect(SIGNAL_1<P>* sig, SLOT_1<P>* slot){
        sig->disconnect(slot);
    }
    template<typename P1,typename P2>
    void disconnect(SIGNAL_2<P1,P2>* sig, SLOT_2<P1,P2>* slot){
        sig->disconnect(slot);
    }

}

#endif // SISL_H
