% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{PSID2}
\alias{PSID2}
\title{Panel Study of Income Dynamics}
\format{
An object of class \code{data.frame} with 6948 rows and 13 columns.
}
\source{
\url{https://simba.isr.umich.edu/}
}
\usage{
PSID2
}
\description{
The data come from the Panel Study of Income
Dynamics, years 1981 to 1992 (also contains earnings
data from 1980). The sample consists of 579 white
females, who were followed over the considered period.
In total, there are 6,948 observations over the 12-year
period (1981-1992). This data frame contains the following
columns:
\itemize{
  \item{id: Individual identifier}
  \item{year: Survey year}
  \item{age: Calculated age in years (based on year and month of birth)}
  \item{educ: Years of schooling}
  \item{children: Total number of children in family unit, ages 0-17}
  \item{s: Participation dummy, =1 if worked (hours>0)}
  \item{lnw: Log of real average hourly earnings}
  \item{lnw80: Log earnings in 1980}
  \item{agesq: Age squared}
  \item{children_lag1: Number of children in t-1}
  \item{children_lag2: Number of children in t-2}
  \item{lnw2: Log of real average hourly earnings}
  \item{Lnw: Log of real average hourly earnings}
}
}
\examples{
data(PSID2)
attach(PSID2)
hist(Lnw)
selectEq <- s ~ educ+ age+ children+ year
outcomeEq <- Lnw ~ educ+ age+ children
HCinitial(selectEq,outcomeEq, data = PSID2)
#Note that the estimated value of rho by the two-step
#method is greater than 1
summary(HeckmanGe(selectEq,outcomeEq, 1, 1, data = PSID2))

}
\references{
{
  \insertRef{semykina2013estimation}{ssmodels}

  \insertRef{ssmrob}{ssmodels}

  \insertRef{sampleSelection}{ssmodels}
}
}
\keyword{datasets}
