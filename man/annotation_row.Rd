\name{ Row Annotations }
\alias{ annotation_row }
\docType{ data }
\title{Annotations of rows in "fheatmap_data" }
\description{Data frame with annotations of rows in data object "fheatmap_data".}
\usage{ data("annotation_row") }
\format{
  A data frame with 15 observations on the following 2 variables.
  \describe{
    \item{\code{Disease}}{ A factor with levels \code{INS} \code{LCK} \code{PIP}}
    \item{\code{Pathways}}{A numeric vector}
  }
}
\details{ A dataframe with two features (Diesease and Pathways) of gene. }
\examples{
data(annotation_row)
fheatmap(fheatmap_data,annotation_row=annotation_row)
}
\keyword{annotation_row}
