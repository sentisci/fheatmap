\name{ Heatmap Data } 
\alias{ fheatmap_data }
\docType{ data }
\title{ An example data object for plotting a heatmap. }
\description{ An example data object for plotting a heatmap. }
\usage{ data("fheatmap_data") }
\format{
  A data frame with 15 observations on the following 15 variables.
  \describe{
    \item{\code{Exp_1}}{a numeric vector}
    \item{\code{Exp_2}}{a numeric vector}
    \item{\code{Exp_3}}{a numeric vector}
    \item{\code{Exp_4}}{a numeric vector}
    \item{\code{Exp_5}}{a numeric vector}
    \item{\code{Exp_6}}{a numeric vector}
    \item{\code{Exp_7}}{a numeric vector}
    \item{\code{Exp_8}}{a numeric vector}
    \item{\code{Exp_9}}{a numeric vector}
    \item{\code{Exp_10}}{a numeric vector}
    \item{\code{Exp_11}}{a numeric vector}
    \item{\code{Exp_12}}{a numeric vector}
    \item{\code{Exp_13}}{a numeric vector}
    \item{\code{Exp_14}}{a numeric vector}
    \item{\code{Exp_15}}{a numeric vector}
  }
}
\details{
A randomly generated dataframe with genes and their expression .
}
\examples{
data(fheatmap_data)
fheatmap(fheatmap_data)
}
\keyword{fheatmap_data}
