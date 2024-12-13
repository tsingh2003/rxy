% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_rxy.R
\name{plot.ryx}
\alias{plot.ryx}
\title{RXY Plot Function}
\usage{
\method{plot}{ryx}(x, ...)
}
\arguments{
\item{x}{the results from "rxy" function}
}
\value{
A formatted plot of the results of the rxy function
}
\description{
Plots the correlations between a dependent variable y and one or more independent x variables.
}
\examples{
library(MASS)
data(Boston)
plot(ryx(Boston, y="medv"))
}
