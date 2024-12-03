#'@title RXY Plot Function
#'@description Plots the correlations between a dependent variable y and one or more independent x variables.
#'@export
#'@param x the results from "rxy" function
#'@returns A formatted plot of the results of the rxy function
#'@import ggplot2
#'@import MASS 
#'
#'@examples
#'library(MASS)
#'data(Boston)
#'plot(ryx(Boston, y="medv"))

plot.ryx <- function(x, ...) {
  library(ggplot2)
  ggplot(data = x$df, aes(x = reorder(variable, abs(r)), y = abs(r), color = r > 0)) +
    geom_point(size = 4) +
    geom_segment(aes(xend = reorder(variable, abs(r)), y = 0, yend = abs(r)), linetype = "dotted") +
    scale_color_manual(values = c("red", "blue"), labels = c("negative", "positive")) +
    coord_flip() +
    labs(
      title = paste("Correlations with", x$y),
      x = "Variables",
      y = "Correlation (absolute value)",
      color = "Direction"
    ) +
    theme_minimal() +
    theme()
}
