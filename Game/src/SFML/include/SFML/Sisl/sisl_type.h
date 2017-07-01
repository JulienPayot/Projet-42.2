/*<===========================================================
LIB  : SISL
version : 2.6
DEV : SOTON "Asphox" Dylan
Date : 2/05/2017
<================================================================*/

#ifndef SISL_TYPE_H
#define SISL_TYPE_H

namespace sisl
{
  enum Type
  {
      Standard = 0,
      Unique = 1,
      Mutex = 2
  };
  
  inline Type operator|(const Type a, const Type b)
  { return static_cast<Type>( static_cast<int>(a) | static_cast<int>(b) ); }
}



#endif // SISL_TYPE_H
