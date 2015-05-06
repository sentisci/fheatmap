\name{ Column Annotations }
\alias{ annotation_col }
\docType{ data }
\title{Annotations of columns in "fheatmap_data"}
\description{Data frame with annotations of columns in data object "fheatmap_data".}
\usage{ data("annotation_col") }
\format{
  A data frame with classification of gene expression.
  \describe{
  \item{\code{Status}}{ A factor with levels \code{High} \code{Low} \code{Medium}}
  }
}
\details{ A dataframe with feature "Status" of gene expressions. }

\examples{
data(annotation_col)
fheatmap(fheatmap_data,annotation_col=annotation_col)
}
\keyword{annotation_col}
