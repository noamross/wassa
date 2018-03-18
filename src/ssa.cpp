#include <Rcpp.h>
#include "ssa.h"

//' Rcpp Stochastic Simulation Algorithm
//' @export
// [[Rcpp::export(rng = false)]]
int rssa(double rate, double max_time, unsigned seed = 0) {
  return ssa(rate, max_time, seed);
}

