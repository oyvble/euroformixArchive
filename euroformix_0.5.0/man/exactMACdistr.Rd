% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/exactMACdistr.R
\name{exactMACdistr}
\alias{exactMACdistr}
\title{exactMACdistr}
\usage{
exactMACdistr(si, lowk = 0)
}
\arguments{
\item{si}{A vector with each element as the sum of allele frequencies for observed alleles.}

\item{lowk}{Lower range of number of allele matches.}
}
\value{
ret A vector with false positive probabilities for each given number of observed alleles.
}
\description{
Calculation of false positive probability of Matching allele counter.
}
\details{
This function will calculate the false positive probability for a given range of allele matches.
Thanks 1: Thore Egeland: Explicit formulas.
Thanks 2: Aaron (stat.umn.edu/~arendahl): A most useful quick permutation-implementation
}
\author{
Oyvind Bleka <Oyvind.Bleka.at.fhi.no>
}

