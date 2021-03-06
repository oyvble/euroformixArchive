% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/simDOdistr.R
\name{simDOdistr}
\alias{simDOdistr}
\title{simDOdistr}
\usage{
simDOdistr(totA, nC, popFreq, refData = NULL, M = 1000, minS = 2000,
  prC = 0, pDknown = rep(NA, nC))
}
\arguments{
\item{totA}{Total number of allele-observations in evidence.}

\item{nC}{Number of contributors to assume in the preposition.}

\item{popFreq}{Population frequencies listed for each loci popFreq[[locname]]}

\item{refData}{List with alleles to condition on. ref[[locname]][[referencename]]=(A1,A2)}

\item{M}{is number of samples for each iteration.}

\item{minS}{is number of minimum accepted samples.}

\item{prC}{Assumed drop-in probability}

\item{pDknown}{A vector of known drop-out probabilities for each contributors. Default is NA which means it is unknown.}
}
\value{
Vector with accepted samples from the dropout distribution
}
\description{
MCMC Allele dropout distribution sampler based on total number of alleles in an evidence.
}
\details{
simDOdistr samples from the drop-out distribution based on total number of alleles in evidence under a specified prepositions. It returns if no samples was accepted in first iteration
}
\author{
Oyvind Bleka <Oyvind.Bleka.at.fhi.no>
}

