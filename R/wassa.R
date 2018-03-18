#' Web Assembly Stochastic Simulation Algorithm
#' @import htmlwidgets
#' @export
wassa <- function(rate, max_time, seed = 0) {
  x = list(rate = rate, max_time = max_time, seed = seed)
  htmlwidgets::createWidget(name = 'wassa',  x = x, width="100%", height="100%",
                            sizingPolicy = htmlwidgets::sizingPolicy(
                              viewer.fill = FALSE
                            ))
}
