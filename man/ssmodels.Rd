% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{package}
\name{ssmodels}
\alias{ssmodels}
\title{ssmodels: A package for fit the sample selection models.}
\arguments{
\item{selection}{Selection equation.}

\item{outcome}{Primary Regression Equation.}

\item{outcomeS}{Matrix with Covariables for fit of the Dispersion Parameter.}

\item{outcomeC}{Matrix with Covariates for Adjusting the Correlation Parameter.}

\item{df}{Initial value to the degree of freedom of Heckman-t model.}

\item{lambda}{Initial value for asymmetry parameter.}

\item{start}{initial values.}

\item{data}{Database.}
}
\value{
Applying any package function returns a list of results
that include estimates of the fit model parameters, hessian matrix,
number of observations, and more. If the initial value is not included
in the function argument, an initial value is estimated from the
Heckman two-step method setting.
}
\description{
Package that provides models to fit data with sample selection bias problems. Includes:
\describe{
\item{HeckmanCL(selectEq, outcomeEq, data = data, start)}{Heckman's classic model fit function. Sample selection
usually arises in practice as a result of partial observability of the
result of interest in a study. In the presence of sample selection, the
observed data do not represent a random sample of the population, even
after controlling for explanatory variables. That is, data is missing
randomly. Thus, standard analysis using only complete cases will lead to
biased results. Heckman introduced a sample selection model to analyze
this data and proposed a complete likelihood estimation method under the
assumption of normality. Such model was called Heckman model or Tobit 2
model.}
\item{HeckmantS(selectEq, outcomeEq, data = data, df, start)}{Heckman-t model adjustment function. The Heckman-t model
maintains the original parametric structure of the Classic Heckman model,
but considers a bivariate Student's t distribution as the underlying joint
distribution of the selection and primary regression variable and estimates
the parameters by maximum likelihood.}
\item{HeckmanSK(selectEq, outcomeEq, data = data, lambda, start)}{Heckman-SK model adjustment function. The Heckman-sk
model maintains the original parametric structure of the Classic Heckman
model, but considers a bivariate Skew-Normal distribution as the underlying
joint distribution of the selection and primary regression variable and
estimates the parameters by maximum likelihood.}
\item{HeckmanBS(selectEq, outcomeBS, data = data, start)}{Heckman-BS model adjustment function. The Heckman-BS model
maintains the original parametric structure of the Classic Heckman model,
but considers a bivariate Birnbaum-Saunders distribution as the underlying
joint distribution of the selection and primary regression variable and
estimates the parameters by maximum likelihood.}
\item{HeckmanGe(selectEq, outcomeEq,outcomeS, outcomeC, data = data)}{Function for adjustment of Generalized Heckman model. The
Generalized Heckman Model generalize the Classic Heckman model by adding
covariables to the dispersion and correlation parameters, which allows to
identify the covariates responsible for the presence of selection bias and
the presence of heteroscedasticity.}
}
}
\seealso{
\code{\link{HeckmanCL}}

\code{\link{HeckmantS}}

\code{\link{HeckmanSK}}

\code{\link{HeckmanBS}}

\code{\link{HeckmanGe}}
}
\author{
Fernando de Souza Bastos, Wagner Barreto de Souza
}
\keyword{Heckman}
