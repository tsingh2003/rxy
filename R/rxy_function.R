#'@title The base RYX Function
#'@description Base function that gives the correlations between a dependent variable y and one or more independent x variables.
#'@export
#'@param data the dataset used
#'@param y the dependent variable
#'@param x the independent variable or variables
#'@returns returns a chart with the correlations of y with x with their r values and p-values
#'@import MASS 
#'@examples
#'
#'data(Boston)
#'summary(ryx(Boston, y="medv"))


ryx <- function(data, y, x){
  if(missing(x)){
    x <- names(data)[sapply(data, class)=="numeric"]
    x <- setdiff(x, y)
  }
  df <- data.frame()
  for (var in x){
    res <- cor.test(data[[y]], data[[var]])
    df_temp <- data.frame(variable = var, 
                          r = res$estimate, 
                          p = res$p.value)
    df <- rbind(df, df_temp)
    df <- df[order(-abs(df$r)),]
  }
  
  df$sigif <- ifelse(df$p < .001, "***",
                     ifelse(df$p < .01, "**", 
                            ifelse(df$p < .05, "*", " ")))
  results <- list(y=y, x=x, df=df)
  class(results) <- "ryx"
  return(results)
}

library(MASS)
x <- ryx(Boston, y="medv")
print(x)
summary(x)
plot(x)

