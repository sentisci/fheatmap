\name{ Row Color }
\alias{ annotation_row_color }
\docType{ data }
\title{Color scheme for row annotations of "fheatmap_data" }
\description{Data frame with color scheme for row annotations of data object "fheatmap_data".}
\usage{ data("annotation_row_color") }
\format{
  A data frame with 15 observations on the following 2 variables.
  \describe{
    \item{\code{Disease}}{a factor with levels \code{deeppink} \code{limegreen} \code{tomato4}}
    \item{\code{Pathways}}{a logical vector}
  }
}
\examples{
data(annotation_row)
fheatmap(fheatmap_data,annotation_row=annotation_row,
          annot_row_color=annotation_row_color)
}
\keyword{datasets}
