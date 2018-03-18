## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  cache = TRUE
)
h <- here::here

## ----cppssh, echo=FALSE, comment=""--------------------------------------
cat(readLines(h('src/ssa.h')), sep="\n")

## ----rcppssh, echo=FALSE, comment=""-------------------------------------
cat(readLines(h('src/ssa.cpp')), sep="\n")

## ----emssh, echo=FALSE, comment=""---------------------------------------
cat(readLines(h('inst/htmlwidgets/lib/emssa/emssa.cpp')), sep="\n")

## ----emcompile, echo=FALSE, comment=""-----------------------------------
cat(readLines(h('configure')), sep="\n")

## ----depends, echo=FALSE, comment=""-------------------------------------
cat(readLines(h('inst/htmlwidgets/wassa.yaml')), sep="\n")

## ----rbinding, echo=FALSE, comment=""------------------------------------
cat(readLines(h('R/wassa.R')), sep="\n")

## ----jsbinding, echo=FALSE, comment=""-----------------------------------
cat(readLines(h('inst/htmlwidgets/wassa.js')), sep="\n")

## ------------------------------------------------------------------------
library(wassa)
rssa(1000, 1)

## ------------------------------------------------------------------------
wassa(1000, 1)

## ------------------------------------------------------------------------
rssa(1000, 1, seed=10)
wassa(1000, 1, seed=10)

## ------------------------------------------------------------------------
library(microbenchmark)
microbenchmark(rssa(1000000, 1), times = 200, unit = 'ms')
wassa(1000000, 1)

