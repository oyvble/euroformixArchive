% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contLikMLEpara.R
\name{contLikMLEpara}
\alias{contLikMLEpara}
\title{contLikMLEpara}
\usage{
contLikMLEpara(nC, samples, popFreq, refData = NULL, condOrder = NULL,
  knownRef = NULL, xi = NULL, prC = 0, nDone = 1, threshT = 50,
  fst = 0, lambda = 0, pXi = function(x) 1, delta = 10, kit = NULL,
  verbose = TRUE)
}
\arguments{
\item{nC}{Number of contributors in model.}

\item{samples}{A List with samples which for each samples has locus-list elements with list elements adata and hdata. 'adata' is a qualitative (allele) data vector and 'hdata' is a quantitative (peak heights) data vector.}

\item{popFreq}{A list of allele frequencies for a given population.}

\item{refData}{Reference objects with (2-size) allele-vector given in list element [[i]][[s]].}

\item{condOrder}{Specify conditioning references from refData (must be consistent order). For instance condOrder=(0,2,1,0) means that we restrict the model such that Ref2 and Ref3 are respectively conditioned as 2. contributor and 1. contributor in the model.}

\item{knownRef}{Specify known non-contributing references from refData (index). For instance knownRef=(1,2) means that reference 1 and 2 is known non-contributor in the hypothesis. This affectes coancestry correction.}

\item{xi}{A numeric giving stutter-ratio if it is known. Default is NULL, meaning it is integrated out.}

\item{prC}{A numeric for allele drop-in probability. Default is 0.}

\item{nDone}{Maximum number of random evaluations nlm-optimizing routing. Default is 1.}

\item{threshT}{The detection threshold given. Used when considering probability of allele drop-outs.}

\item{fst}{The co-ancestry coefficient. Default is 0.}

\item{lambda}{Parameter in modeled peak height shifted exponential model. Default is 0.}

\item{pXi}{Prior function for xi-parameter (stutter). Flat prior on [0,1] is default.}

\item{delta}{Standard deviation of normal distribution when drawing random startpoints. Default is 10.}

\item{kit}{Used to model degradation. Must be one of the shortnames of kit: {"ESX17","ESI17","ESI17Fast","ESX17Fast","Y23","Identifiler","NGM","ESSPlex","ESSplexSE","NGMSElect","SGMPlus","ESX16", "Fusion","GlobalFiler"}.}

\item{verbose}{Boolean whether printing optimization progress. Default is TRUE.}
}
\value{
ret A list(fit,model,nDone,delta) where fit is Maximixed likelihood elements for given model.
}
\description{
Parallelization on contLikMLE using snow
}
\details{
The procedure is doing parallelization of the contLikMLE function

The procedure also does a Laplace Approximation of the marginalized likelihood (theta integrated out) and returns the log-marginal likelihood as logmargL in the fit-list.

Function calls procedure in c++ by using the package Armadillo and Boost.
}
\references{
Cowell,R.G. et.al. (2014). Analysis of forensic DNA mixtures with artefacts. Applied Statistics, 64(1),1-32.
}
\author{
Oyvind Bleka <Oyvind.Bleka.at.fhi.no>
}
\keyword{Estimation}
\keyword{Likelihood}
\keyword{Maximum}
\keyword{continuous}
\keyword{model,}
