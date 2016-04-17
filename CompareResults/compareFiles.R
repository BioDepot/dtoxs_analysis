# Takes two inputs from the command line
# 1: filename of expected result
# 2: filename of actual result

suppressPackageStartupMessages(library(compare))

args <- commandArgs(trailingOnly = T)
expected_results.mat <- read.table(args[1], header=T, sep="\t")
actual_results.mat <- read.table(args[2], header=T, sep="\t")

comp <- compare(expected_results.mat, actual_results.mat)

if (!comp$result) {
  writeLines(paste(basename(args[1]), "was not equal"))
}

rm(args, expected_results.mat, actual_results.mat, comp)

