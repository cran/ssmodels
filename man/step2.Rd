% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/step2.R
\name{step2}
\alias{step2}
\title{Heckman's two-step method}
\usage{
step2(YS, XS, YO, XO)
}
\arguments{
\item{YS}{Selection vector.}

\item{XS}{Selection Matrix.}

\item{YO}{Interest vector.}

\item{XO}{Matrix of the equation of interest.}
}
\value{
Returns a numerical vector with the parameter estimates of the Classical
Heckman model via a two-step method. For more information see
\insertCite{heckman1979sample;textual}{ssmodels}
}
\description{
Estimate model parameters via two-step method
}
\examples{
data(MEPS2001)
attach(MEPS2001)
YS <- dambexp
XS <- cbind(age, female, educ, blhisp, totchr, ins)
YO <- lnambx
XO <- cbind(age, female, educ, blhisp, totchr, ins, income)
step2(YS, XS, YO, XO)
}
\references{
{
\insertAllCited{}
}
}
