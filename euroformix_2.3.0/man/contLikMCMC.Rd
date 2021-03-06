% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contLikMCMC.R
\name{contLikMCMC}
\alias{contLikMCMC}
\title{contLikMCMC}
\usage{
contLikMCMC(mlefit, niter = 10000, delta = 10, maxxi = 1)
}
\arguments{
\item{mlefit}{Fitted object using contLikMLE}

\item{niter}{Number of samples in the MCMC-sampling.}

\item{delta}{A numerical parameter to scale with the covariance function Sigma. Default is 2. Should be higher to obtain lower acception rate.}

\item{maxxi}{Upper boundary of the xi-parameters}
}
\value{
ret A list (margL,posttheta,postlogL,logpX,accrat,Ubound ) where margL is Marginalized likelihood for hypothesis (model) given observed evidence, posttheta is the posterior samples from a MC routine, postlogL is sampled log-likelihood values, accrat is ratio of accepted samples. Ubound is upper boundary of parameters.
}
\description{
contLikMCMC simulates from the posterior distribution for a bayesian STR DNA mixture model.
}
\details{
The procedure are doing MCMC to approximate the marginal probability over noisance parameters. Mixture proportions have flat prior.

If no initial values or covariance matrix has been provided to the function, a call to the MLE function is applied.
The Metropolis Hastings routine uses a Multivariate Normal distribution with mean 0 and covariance as delta multiplied with the inverse negative hessian with MLE inserted as transistion kernel.
Function calls procedure in c++ by using the package Armadillo and Boost.
Marginalized likelihood is estimated using Metropolis Hastings with the "Gelfand and Dey" method.
}
\references{
Craiu,R.V. and Rosenthal, J.S. (2014). Bayesian Computation Via Markov Chain Monte Carlo. Annu. Rev. Stat. Appl., 1,179-201.
}
\author{
Oyvind Bleka
}
\keyword{BayesianModels,}
\keyword{MCMC,}
\keyword{MarginalizedLikelihoodEstimation}
\keyword{MetropolisHastings,}
\keyword{continuous,}
