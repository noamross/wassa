#include <random>
#include <chrono>
int ssa(double rate, double max_time, unsigned seed = 0)
{

  //since this is pure C++ that may have multiple targets we do not
  //use the convenient Rcpp interface to R's RNG generators
  if(seed == 0) {
   seed = std::chrono::system_clock::now().time_since_epoch().count();
  }
  std::mt19937 gen(seed);
  std::exponential_distribution<double> jump(rate);

  double time = 0;
  int steps = 0;
  while(time < max_time) {
    time += jump(gen);
    steps += 1;
  }
  return steps;
}
