print_ryx <- function(x, ...) {
  cat("Correlations of", x$y, "with\n")
  print(x$df, row.names = FALSE)
}
