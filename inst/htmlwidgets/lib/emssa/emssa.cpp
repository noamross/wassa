// quick_example.cpp
#include <emscripten/bind.h>
#include  "../../../../src/ssa.h"

using namespace emscripten;

EMSCRIPTEN_BINDINGS(my_module) {
  function("ssa", &ssa);
}
