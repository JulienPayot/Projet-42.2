/*<===========================================================
LIB  : SISL
version : 2.6
DEV : SOTON "Asphox" Dylan
Date : 2/05/2017
<================================================================*/

#ifndef SISL_SLOT_H
#define SISL_SLOT_H


////////////////////////////////////////////////////////////
// Headers
////////////////////////////////////////////////////////////
#include "sisl_signal.h"

namespace sisl
{
    ////////////////////////////////////////////////////////////
    /// \brief Slot encapsulate a function or a member function
    ///
    ////////////////////////////////////////////////////////////
    template<typename ...Args>
    class Slot
    {
        friend class Signal<Args...>;

      public:

          ////////////////////////////////////////////////////////////
          /// \brief member function constructor
          ///
          /// This constructor create a slot with a member function
          /// from an object.
          ///
          /// \param obj  pointer to the object owning the function
          /// \param fct  pointer to member function
          ///
          ////////////////////////////////////////////////////////////
          template <typename OBJ,typename FCT>
          Slot(const OBJ obj,const FCT fct);

          ////////////////////////////////////////////////////////////
          /// \brief function constructor
          ///
          /// This constructor create a slot with function
          ///
          /// \param fct  pointer to function
          ///
          ////////////////////////////////////////////////////////////
          template <typename FCT>
          Slot(FCT fct);

          ////////////////////////////////////////////////////////////
          /// \brief destructor
          ///
          /// Destroys the slot, warns all signals connected to it, and finally,
          /// frees all allowed ressources.
          ///
          ////////////////////////////////////////////////////////////
          ~Slot();

          ////////////////////////////////////////////////////////////
          /// \brief Put in sleep the slot
          ///
          /// Use this function if you want to temporarily desactivate
          /// this slot.
          ///
          /// \param b  true to enable sleeping mode , false to disable sleeping mode
          ///
          ////////////////////////////////////////////////////////////
          void sleeping(bool b);

          ////////////////////////////////////////////////////////////
          /// \brief return the current sleeping mode
          ///
          /// \return bool  true if sleeping mode enabled , false if sleeping mode is disabled
          ///
          ////////////////////////////////////////////////////////////
          inline bool isSleeping() const;

          ////////////////////////////////////////////////////////////
          /// \brief Return a pointer to the sender object
          ///
          /// With this function you can know which object has emited
          /// the signal which has called the current slot.
          /// WARNING : make sure the returned pointer is valid and not nullptr
          ///
          ////////////////////////////////////////////////////////////
          template<typename SENDERTYPE>
          SENDERTYPE getSender() const;

          ////////////////////////////////////////////////////////////
          /// \brief function-like call operator
          ///
          /// Use this operator if you want to call the slot like a
          /// usual function with adequate parameters.
          ///
          /// \param Args... variadic template for all the arguments.
          ///
          ////////////////////////////////////////////////////////////
          inline void operator()(Args... param);

          ////////////////////////////////////////////////////////////
          /// \brief overloaded new operator
          ///
          /// New is overloaded to make sure than no dynamic allocations
          /// of a Slot are made. Elseway, it raises a std::bad_alloc for safety.
          ///
          /// \param size size of the allocation
          ///
          /// \return pointer to the allocated object
          ///
          ////////////////////////////////////////////////////////////
          void* operator new (std::size_t size);

          ////////////////////////////////////////////////////////////
          /// \brief overloaded new[] operator
          ///
          /// New is overloaded to make sure than no dynamic allocations
          /// of a Slot are made. Elseway, it raises a std::bad_alloc for safety.
          ///
          /// \param size size of the allocation
          ///
          /// \return pointer to the allocated object
          ////////////////////////////////////////////////////////////
          void* operator new[] (std::size_t size);

      private:

          ////////////////////////////////////////////////////////////
          /// \brief Execute the function linked to the slot
          ///
          ///
          /// Execute the function with the special connection Type
          ///
          /// \param sender pointer to the the sending object
          /// \param co_ty connection type ( standard / Unique / Mutex )
          /// \param param... parameters to pass to the function
          ///
          ////////////////////////////////////////////////////////////
          void exec(void* sender, const Type& co_ty, Args... param);

          ////////////////////////////////////////////////////////////
          /// \brief Common initialisation
          ///
          ///
          /// Common initialisation process between all constructors
          ///
          ////////////////////////////////////////////////////////////
          inline void init();

          ////////////////////////////////////////////////////////////
          /// Member data
          ////////////////////////////////////////////////////////////
          void*                        sender;     //< pointer to the sending object
          bool                         sleep;      //< sleeping mode
          std::mutex*                  mtx;        //< mutex for the Mutex connection option
          std::function<void(Args...)> fct;        //< std::function representing the slot function
          std::set< Signal<Args...>* > connectors; //< list of all signals connected to the slot

    };

}//namespace sisl

////////////////////////////////////////////////////////////
/// .tpp include
////////////////////////////////////////////////////////////
#ifndef SISL_SLOT_TPP
#define SISL_SLOT_TPP
#include "sisl_slot.tpp"
#endif //SISL_SLOT_TPP

#endif // SISL_SLOT_H
