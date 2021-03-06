% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_generics.R
\name{clusterProbability}
\alias{clusterProbability}
\title{Get the probability of the cluster assignments generated during a celda run.}
\usage{
clusterProbability(counts, celda.mod, log = FALSE, modules = NULL, ...)
}
\arguments{
\item{counts}{Integer matrix. Rows represent features and columns represent cells. This matrix should be the same as the one used to generate `celda.mod`.}

\item{celda.mod}{Celda model. Options available in `celda::available.models`.}

\item{log}{Logical. If FALSE, then the normalized conditional probabilities will be returned. If TRUE, then the unnormalized log probabilities will be returned. Default FALSE.}
}
\value{
A numeric vector of the cluster assignment probabilties
}
\description{
Get the probability of the cluster assignments generated during a celda run.
}
\examples{
cluster.prob = clusterProbability(celda.CG.sim$counts, celda.CG.mod)
}
