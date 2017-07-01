/*<===========================================================
LIB  : SISL
version : 2.6
DEV : SOTON "Asphox" Dylan
Date : 2/05/2017
<================================================================*/


namespace sisl
{
template<typename ...Args>
Signal<Args...>::Signal(void* sender)
{
    this->sender = sender;
}

template<typename ...Args>
bool Signal<Args...>::connect(Slot<Args...>& entity,const Type co_ty)
{

    const auto it = list_slot.find(&entity);

    if( it == list_slot.end() || ( it != list_slot.end() && ( it->second & Type::Unique ) == 0 ) )
    {
      list_slot.insert({&entity,co_ty});
      entity.connectors.insert(this);
      return true;
    }
    __verbose__(__W__UNIQUE_CONNECT_ALREADY_EXIST,this);
    return false;

}

template<typename ...Args>
void Signal<Args...>::disconnect(Slot<Args...>& slot)
{
    const auto& it = list_slot.find(&slot);
    if(it != list_slot.end())
    {
        it->first->connectors.erase(this);
        list_slot.erase(&slot);
    }
    else
    {
      __verbose__(__W__DISCONNECT_NOT_CONNECTED,this);
    }
}


template<typename ...Args>
void Signal<Args...>::disconnect_all()
{
    for(const auto& it : list_slot)
    {
        it.first->connectors.erase(this);
    }
    list_slot.clear();
}

template<typename ...Args>
void Signal<Args...>::emit(Args... param)
{
    for(const auto& it : list_slot)
        it.first->exec(sender,it.second,param...);
}

template<typename ...Args>
void Signal<Args...>::operator()(Args... param)
{
    emit(param...);
}

template<typename ...Args>
Signal<Args...>::~Signal()
{
     disconnect_all();
}
}
