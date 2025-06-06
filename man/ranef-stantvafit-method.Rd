% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tva.R
\name{ranef,stantvafit-method}
\alias{ranef,stantvafit-method}
\title{Random effects}
\usage{
\S4method{ranef}{stantvafit}(object)
}
\arguments{
\item{object}{The StanTVA fit object.}
}
\value{
The fixed effects.
}
\description{
Returns the random effects for a StanTVA fit object.
}
\examples{
\donttest{
random_effects <- ranef(fit)
random_effects
}
}
