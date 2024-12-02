summary_ryx <- function(object, ...) {
  cat("Correlating", object$y, "with", paste(object$x, collapse = " "), "\n")
  
  abs_cor <- abs(object$df$r)
  cat("The median absolute correlation was", 
      round(median(abs_cor), 3), 
      "with a range from", 
      round(min(object$df$r), 3), 
      "to", 
      round(max(object$df$r), 3), 
      "\n")
  
  sig_count <- sum(object$df$p < 0.05)
  cat(sig_count, "out of", nrow(object$df), 
      "variables were significant at the p < 0.05 level.\n")
}
