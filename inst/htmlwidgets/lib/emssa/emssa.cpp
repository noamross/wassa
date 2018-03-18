// quick_example.cpp
#include <emscripten/bind.h>
#include  "../../../../src/ssa.h"  //there' probably a better way to do this

using namespace emscripten;

EMSCRIPTEN_BINDINGS(my_module) {
  function("ssa", &ssa);
}
