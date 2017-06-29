#include "sisl.h"
#include <iostream>

int main(int argc, char const *argv[]) {
  EXT_SIGNAL(sig,);
  EXT_SLOT(slot,[](){ std::cout << "test" << std::endl; },);
  sig.connect(slot);
  sig();
  return 0;
}
