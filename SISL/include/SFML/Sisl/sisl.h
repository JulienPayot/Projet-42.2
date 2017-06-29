/*<===========================================================
LIB  : SISL
version : 2.6
DEV : SOTON "Asphox" Dylan
Date : 2/05/2017
<================================================================*/

#if __cplusplus <= 199711L

#error <!><!><!><!><!><!>COMPILER MUST USE C++11 TO USE THIS CODE<!><!><!><!><!><!>

#else

#ifndef SISL_H
#define SISL_H

#include <unordered_map>
#include <set>
#include <functional>
#include <thread>
#include <mutex>
#include <iostream>

#define SLOT(name,obj,fct,...) sisl::Slot<__VA_ARGS__> name = sisl::Slot<__VA_ARGS__>(this,&obj::fct)
#define EXT_SLOT(name,fct,...) sisl::Slot<__VA_ARGS__> name = sisl::Slot<__VA_ARGS__>(fct)
#define SIGNAL(name,...) sisl::Signal<__VA_ARGS__> name = sisl::Signal<__VA_ARGS__>(this)
#define EXT_SIGNAL(name,...) sisl::Signal<__VA_ARGS__> name = sisl::Signal<__VA_ARGS__>()

//#define SISL_VERBOSE_MODE

namespace sisl
{
  const std::string __E__SLOT_EXECUTION = " [SISL] error : An exception occured in slot execution, program may stop. Info : ";
  const std::string __E__SLOT_INST_FAIL = " [SISL] error : A slot can't be created, program may stop. Info : ";
  const std::string __E__DYNAMIC_ALLOC =  " [SISL] error : An attempt of dynamic allocation of Signal or Slot has been detected. Info :";
  const std::string __W__DISCONNECT_NOT_CONNECTED = " [SISL] warning : Attempt to disconnect a non-connected slot.";
  const std::string __W__UNIQUE_CONNECT_ALREADY_EXIST = " [SISL] warning : Attempt to connect a slot which is already unique-connected, nothing will be done.";


  inline void __verbose__(const std::string& str,const void* who = nullptr)
  {
    #ifdef SISL_VERBOSE_MODE
    std::cerr << who << str << std::endl;
    #endif
 }

}

#include "sisl_type.h"
#include "sisl_slot.h"
#include "sisl_signal.h"

namespace sisl
{
  template<typename ...SLOT_TYPES,typename ...SIGNAL_TYPES>
  inline Slot<SIGNAL_TYPES...>& adapt( Slot<SLOT_TYPES...>& slot, const Signal<SIGNAL_TYPES...>& to )
  {
    return *reinterpret_cast< Slot<SIGNAL_TYPES...>* >(&slot);
  }
}

#endif // SISL_H

#endif // __cplusplus
