% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tva.R
\name{fitted,stantvafit-method}
\alias{fitted,stantvafit-method}
\title{Retrieve fitted parameter values}
\usage{
\S4method{fitted}{stantvafit}(object, variables = names(object@stanmodel@code@df))
}
\arguments{
\item{object}{The StanTVA fit object.}

\item{variables}{The names of the parameters to retrieve.}
}
\value{
The fitted values.
}
\description{
Returns the fitted values for latent model parameters. This is identical to calling \code{predict()} without new data.
}
\examples{
\donttest{
p <- fitted(fit, variables = c("C","K"))
colMeans(p$C)
}
}
