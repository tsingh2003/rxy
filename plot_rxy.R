plot.ryx <- function(x, ...) {
  library(ggplot2)
  
  # Create the ggplot
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
plot(x)
