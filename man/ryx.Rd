% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rxy_function.R
\name{ryx}
\alias{ryx}
\title{The base RYX Function}
\usage{
ryx(data, y, x)
}
\arguments{
\item{data}{the dataset used}

\item{y}{the dependent variable}

\item{x}{the independent variable or variables}
}
\value{
returns a chart with the correlations of y with x with their r values and p-values
}
\description{
Base function that gives the correlations between a dependent variable y and one or more independent x variables.
}
\examples{
library(MASS)
data(Boston)
summary(ryx(Boston, y="medv"))
}
