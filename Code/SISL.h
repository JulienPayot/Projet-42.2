/*<===========================================================
LIB  : SISL ( SIgnal SLot)
version : 1.2
ajouts 1.2 =>
    -ajout de SIGNAL_2 et SLOT_2
    -ajout d'une verification avant d'appeler un slot en interne ( verification que le slot est bien attaché a une fonction )
    -ajout d'une methode "detach" qui retire la fonction attacher au slot
    -possibilité de connecter des signaux à un signal

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
        std::vector<const SIGNAL_0*> _array_signal_0;
    public:
        void connect(const SLOT_0* slot){
            _array_slot.push_back(slot);
        }
        void connect(const SIGNAL_0* signal){
            _array_signal_0.push_back(signal);
        }
        void disconnect(const SLOT_0* slot){
            size_t i=0;
            while(_array_slot[i] != slot && i<_array_slot.size())i++;
            if(i<_array_slot.size())_array_slot.erase(_array_slot.begin()+i);
        }
        void disconnect(const SIGNAL_0* signal){
            size_t i=0;
            while(_array_signal_0[i] != signal && i<_array_signal_0.size())i++;
            if(i<_array_signal_0.size())_array_signal_0.erase(_array_signal_0.begin()+i);
        }
        void disconnect_all(){
            _array_slot.clear();
            _array_signal_0.clear();
        }
        void emit() const {
            for(size_t i=0;i<_array_slot.size();i++)
                _array_slot[i]->exec();
            for(size_t i=0;i<_array_signal_0.size();i++)
                _array_signal_0[i]->emit();
        }
    };

    /*================================================================
        SIGNAL WITH 1 ARG
      ================================================================*/
    template<typename P>
    class SIGNAL_1          //signal with 1 arg
    {
    private:
        std::vector<const SLOT_1<P>*> _array_slot;
        std::vector<const SLOT_0*> _array_slot_0;
        std::vector<const SIGNAL_0*> _array_signal_0;
        std::vector<const SIGNAL_1<P>*> _array_signal_P;
    public:

        void connect(const SLOT_0* slot){
            _array_slot_0.push_back(slot);
        }
        void connect(const SLOT_1<P>* slot){
            _array_slot.push_back(slot);
        }
        void connect(const SIGNAL_0* signal){
            _array_signal_0.push_back(signal);
        }
        void connect(const SIGNAL_1<P>* signal){
            _array_signal_P.push_back(signal);
        }

        void disconnect(const SLOT_0* slot){
            size_t i=0;
            while(_array_slot_0[i] != slot && i<_array_slot_0.size())i++;
            if(i<_array_slot_0.size())_array_slot_0.erase(_array_slot_0.begin()+i);
        }

        void disconnect(const SLOT_1<P>* slot){
            size_t i=0;
            while(_array_slot[i] != slot && i<_array_slot.size())i++;
            if(i<_array_slot.size())_array_slot.erase(_array_slot.begin()+i);
        }

        void disconnect(const SIGNAL_0* signal){
            size_t i=0;
            while(_array_signal_0[i] != signal && i<_array_signal_0.size())i++;
            if(i<_array_signal_0.size())_array_signal_0.erase(_array_signal_0.begin()+i);
        }

        void disconnect(const SIGNAL_1<P>* signal){
            size_t i=0;
            while(_array_signal_P[i] != signal && i<_array_signal_P.size())i++;
            if(i<_array_signal_P.size())_array_signal_P.erase(_array_signal_P.begin()+i);
        }
        void disconnect_all(){
            _array_slot.clear();
            _array_slot_0.clear();
            _array_signal_0.clear();
            _array_signal_P.clear();
        }
        void emit(const P param) const {
            for(size_t i=0;i<_array_slot_0.size();i++)
                _array_slot_0[i]->exec();
            for(size_t i=0;i<_array_slot.size();i++)
                _array_slot[i]->exec(param);
            for(size_t i=0;i<_array_signal_0.size();i++)
                _array_signal_0[i]->emit();
            for(size_t i=0;i<_array_signal_P.size();i++)
                _array_signal_P[i]->emit(param);
        }

    };

    /*================================================================
        SIGNAL WITH 2 ARG
      ================================================================*/
    template<typename P1, typename P2>
    class SIGNAL_2          //signal with 1 arg
    {
    private:
        std::vector<const SLOT_0*> _array_slot_0;
        std::vector<const SLOT_2<P1,P2>*> _array_slot;
        std::vector<const SIGNAL_0*> _array_signal_0;
        std::vector<const SIGNAL_2<P1,P2>*> _array_signal_P;
    public:

        void connect(const SLOT_0* slot){
            _array_slot_0.push_back(slot);
        }

        void connect(const SLOT_2<P1,P2>* slot){
            _array_slot.push_back(slot);
        }

        void connect(const SIGNAL_0* signal){
            _array_signal_0.push_back(signal);
        }

        void connect(const SIGNAL_2<P1,P2>* signal){
            _array_signal_P.push_back(signal);
        }

        void disconnect(const SLOT_0* slot){
            size_t i=0;
            while(_array_slot_0[i] != slot && i<_array_slot_0.size())i++;
            if(i<_array_slot_0.size())_array_slot_0.erase(_array_slot_0.begin()+i);
        }

        void disconnect(const SIGNAL_0* signal){
            size_t i=0;
            while(_array_signal_0[i] != signal && i<_array_signal_0.size())i++;
            if(i<_array_signal_0.size())_array_signal_0.erase(_array_signal_0.begin()+i);
        }

        void disconnect(const SIGNAL_2<P1,P2>* signal){
            size_t i=0;
            while(_array_signal_P[i] != signal && i<_array_signal_P.size())i++;
            if(i<_array_signal_P.size())_array_signal_P.erase(_array_signal_P.begin()+i);
        }

        void disconnect(const SLOT_2<P1,P2>* slot){
            size_t i=0;
            while(_array_slot[i] != slot && i<_array_slot.size())i++;
            if(i<_array_slot.size())_array_slot.erase(_array_slot.begin()+i);
        }
        void disconnect_all(){
            _array_slot_0.clear();
            _array_slot.clear();
            _array_signal_0.clear();
            _array_signal_P.clear();
        }
        void emit(const P1 param1,const P2 param2) const {
            for(size_t i=0;i<_array_slot_0.size();i++)
                _array_slot_0[i]->exec();
            for(size_t i=0;i<_array_slot.size();i++)
                _array_slot[i]->exec(param1,param2);
            for(size_t i=0;i<_array_signal_0.size();i++)
                _array_signal_0[i]->emit();
            for(size_t i=0;i<_array_signal_P.size();i++)
                _array_signal_P[i]->emit(param1,param2);
        }

    };
}

#endif // SISL_H
