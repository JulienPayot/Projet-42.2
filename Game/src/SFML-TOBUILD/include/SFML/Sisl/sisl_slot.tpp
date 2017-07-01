/*<===========================================================
LIB  : SISL
version : 2.6
DEV : SOTON "Asphox" Dylan
Date : 2/05/2017
<================================================================*/

#include "sisl_signal.h"

namespace sisl
{

template<typename ...Args>
void Slot<Args...>::exec(void* sender, const Type& connectionType, Args... param)
{
    if(sleep)
      return;

    if( connectionType & Type::Mutex )
      mtx->lock();

    this->sender = sender;
    try
    {
        fct(param...);
    }
    catch(const std::exception& e)
    {
        std::cerr << this << __E__SLOT_EXECUTION << e.what() << std::endl;
        throw e;
    }
    this->sender = nullptr;
    mtx->unlock();
}

template<typename ...Args>
void Slot<Args...>::init()
{
    sleep = false;
    mtx = new std::mutex;
}

template<typename ...Args>
template <typename OBJ,typename FCT>
Slot<Args...>::Slot(const OBJ obj,const FCT fct)
{
    try
    {
        init();
        this->fct = [fct,obj](Args... T){ (obj->*fct)(T...); };
    }
    catch(const std::exception& e)
    {
        std::cerr << this << __E__SLOT_INST_FAIL << e.what() << std::endl;
        throw e;
    }
}

template<typename ...Args>
template <typename FCT>
Slot<Args...>::Slot(FCT fct)
{
  try
  {
    init();
    this->fct = [fct](Args... T){  fct(T...); };
  }
  catch(const std::exception& e)
  {
      std::cerr << this << __E__SLOT_INST_FAIL << e.what() << std::endl;
      throw e;
  }
}

template<typename ...Args>
Slot<Args...>::~Slot()
{
     for(const auto& it : connectors)
     {
        it->list_slot.erase(this);
     }

    delete mtx;
}

template<typename ...Args>
template<typename SENDERTYPE>
SENDERTYPE sisl::Slot<Args...>::getSender() const
{
    return static_cast<SENDERTYPE>(sender);
}

template<typename ...Args>
void Slot<Args...>::operator()(Args... param)
{
    exec(nullptr,param...);
}

template<typename ...Args>
void* Slot<Args...>::operator new(std::size_t size)
{
  __verbose__(__E__DYNAMIC_ALLOC);
  throw std::bad_alloc();
  return 0xBADC0DE; //<=== never reach this
}

template<typename ...Args>
void* Slot<Args...>::operator new[](std::size_t size)
{
  __verbose__(__E__DYNAMIC_ALLOC);
  throw std::bad_alloc();
  return 0xBADC0DE; //<=== never reach this
}

}
