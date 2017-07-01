/*<===========================================================
LIB  : SISL
version : 2.6
DEV : SOTON "Asphox" Dylan
Date : 2/05/2017
<================================================================*/



#ifndef SISL_SIGNAL_H
#define SISL_SIGNAL_H

namespace sisl
{
    template<typename ...Args>
    class Slot;

    ////////////////////////////////////////////////////////////
    /// \brief Signal connects and calls slots
    ///
    ////////////////////////////////////////////////////////////
    template<typename ...Args>
    class Signal
    {

        friend class Slot<Args...>;

      public:
              ////////////////////////////////////////////////////////////
              /// \brief constructor
              ///
              /// \param sender  pointer to the object owning the signal
              ///
              ////////////////////////////////////////////////////////////
              Signal(void* sender = nullptr);

              ////////////////////////////////////////////////////////////
              /// \brief destructor
              ///
              ////////////////////////////////////////////////////////////
              ~Signal();

              ////////////////////////////////////////////////////////////
              /// \brief connect a slot
              ///
              /// Connect a slot with specific connection type ( standard / Unique / Mutex )
              ///
              /// \param slot reference to the slot
              /// \param co_ty connection type
              /// \return bool true if connection is OK.
              ////////////////////////////////////////////////////////////
              bool connect(Slot<Args...>& slot, const Type co_ty = Type::Standard );

              ////////////////////////////////////////////////////////////
              /// \brief disconnect a slot
              ///
              /// \param slot reference to the slot
              ///
              ////////////////////////////////////////////////////////////
              void disconnect(Slot<Args...>& slot);

              ////////////////////////////////////////////////////////////
              /// \brief disconnect all slots connected to the signal
              ///
              ////////////////////////////////////////////////////////////
              void disconnect_all();

              ////////////////////////////////////////////////////////////
              /// \brief emit the signal
              ///
              /// Calls all slots connected to the signal with sending parameters
              ///
              /// \param param... variadic template with all parameters
              ///
              ////////////////////////////////////////////////////////////
              void emit(Args... param);

              ////////////////////////////////////////////////////////////
              /// \brief operator equivalent to emit
              ///
              /// \param param... variadic template with all parameters
              ///
              ////////////////////////////////////////////////////////////
              void operator()(Args... param);

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
              /// Member data
              ////////////////////////////////////////////////////////////
              void*                                              sender;  //< object owning the signal
              std::unordered_multimap<Slot<Args...>*,const Type> list_slot; //< list of slots



    };
}//namespace sisl

////////////////////////////////////////////////////////////
/// .tpp include
////////////////////////////////////////////////////////////
#ifndef SISL_SIGNAL_TPP
#define SISL_SIGNAL_TPP
#include "sisl_signal.tpp"
#endif

#endif
