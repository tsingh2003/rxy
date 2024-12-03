#'@title Printing RYX Function
#'@description Prints RXY function in a neat clean way
#'@export
#'@param x the results from "rxy" function
#'@returns A formatted print of the results of the "rxy" function
#'
#'@import MASS 
#'@examples
#'data(Boston)
#'print(ryx(Boston, y="medv"))

print.ryx <- function(x, ...) {
  cat("Correlations of", x$y, "with\n")
  print(x$df, row.names = FALSE)
}
