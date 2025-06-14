% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HCinitial.R
\name{HCinitial}
\alias{HCinitial}
\title{Two-Step Method for Parameter Estimation of the Classical Heckman Model}
\usage{
HCinitial(selection, outcome, data = sys.frame(sys.parent()))
}
\arguments{
\item{selection}{A formula specifying the selection equation.}

\item{outcome}{A formula specifying the outcome equation.}

\item{data}{A data frame containing the variables in the model.}
}
\value{
A named numeric vector containing:
\itemize{
  \item Coefficients from the selection equation (probit model),
  \item Coefficients from the outcome equation (excluding the IMR),
  \item Estimated \code{sigma},
  \item Estimated \code{rho}.
}
}
\description{
Estimates the parameters of the classical Heckman sample selection model using the two-step estimation method.
}
\details{
This function implements the two-step approach proposed by Heckman (1979) to estimate the parameters
of the classic sample selection model. It is particularly useful for obtaining initial values
for maximum likelihood estimation (MLE).

In the first step, a probit model is fitted to the selection equation to estimate the probability of selection.
The second step involves estimating a linear regression of the outcome equation for the observed (selected) data,
incorporating the inverse Mills ratio (IMR) as an additional regressor to correct for sample selection bias.

The function also estimates:
\itemize{
  \item \code{sigma}: The standard deviation of the outcome equation's error term.
  \item \code{rho}: The correlation coefficient between the errors of the selection and outcome equations.
}
}
\examples{
data(MEPS2001)
attach(MEPS2001)
selectEq <- dambexp ~ age + female + educ + blhisp + totchr + ins + income
outcomeEq <- lnambx ~ age + female + educ + blhisp + totchr + ins
HCinitial(selectEq, outcomeEq, data = MEPS2001)

}
\references{
\insertRef{heckman1979sample}{ssmodels}
}
