\name{ Column Color }
\alias{ annotation_col_color }
\docType{ data }
\title{Color scheme for column annotations of "fheatmap_data" }
\description{Data frame with color scheme for column annotations of data object "fheatmap_data".}
\usage{ data("annotation_col_color") }
\format{
  A data frame with 15 observations on the following variable.
  \describe{
    \item{\code{Status}}{a factor with levels \code{deeppink} \code{orange} \code{tomato4}}
  }
}
\examples{
data(annotation_col_color)
fheatmap(fheatmap_data,annotation_col=annotation_col,
          annot_col_color=annotation_col_color)
}
\keyword{ annotation_col_color }
