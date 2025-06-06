% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tva.R
\name{sampling}
\alias{sampling}
\alias{sampling,stantvamodel-method}
\title{Draw posterior samples from an RStanTVA model}
\usage{
sampling(object, ...)

\S4method{sampling}{stantvamodel}(
  object,
  data,
  init = "random",
  ...,
  backend = c("rstan", "cmdstanr", "cmdstanr_mpi"),
  cpp_options = if (match.arg(backend) == "cmdstanr") list(stan_threads =
    object@code@config$parallel) else if (match.arg(backend) == "cmdstanr_mpi") list(CXX
    = "mpicxx", TBB_CXX_TYPE = "gcc", STAN_MPI = TRUE)
)
}
\arguments{
\item{object}{The StanTVA model object.}

\item{...}{Further arguments passed to the sampling handler of the specified backend.}

\item{data}{The data to which the model should be fitted, usually a \code{data.frame}.}

\item{init}{How to initialize the individual chains, see \code{\link[rstan:sampling]{rstan::sampling()}}. Note that for \code{random}, any lower-level hierarchical (e.g., subject-level) parameters are initialized to zero.}

\item{backend}{Which backend to use for fitting (default: \code{rstan})}

\item{cpp_options}{Which options to pass to \code{stan_model()} for compiling the C++ code.}
}
\value{
Returns a \code{stantva_fit} object, which inherits from \code{\link[rstan:stanfit]{stanfit}}, representing the fit of \code{object} to \code{data}.
}
\description{
Draw samples from the model defined by \code{object}.
}
\section{Functions}{
\itemize{
\item \code{sampling(stantvamodel)}: method

}}
