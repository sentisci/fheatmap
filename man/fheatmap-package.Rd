\name{Fanstatic Heatmap}
\alias{fheatmap}
\docType{package}
\title{ R function to draw heatmaps with hierarchical colored dendogram/s. }
\description{
  R function to plot high quality, elegant heatmap using ggplot2 graphics .
  Some of the important features of this package are, coloring of row and 
  column side tree with respect to the number of user given cuts in   the 
  cluster, add annotations to both columns and rows, parameter to input 
  ColorBrewer palettes for row and column annotations and multiple 
  parameters to modify aesthetics (style, color, font) of texts in the plot.
}
\usage{
fheatmap(data,header=T,scale=F,title=NA,title_fontsize=6,title_color="black",
title_font_style="",title_fontface="plain",rowname=T,breaks=NULL,
mat_color=NULL,cluster_rows=F,cluster_cols=T,cut_rowtree=0,cut_coltree=0,
display_tree_col=T,display_tree_row=F, cluster_distance_rows="euclidean",
cluster_distance_cols="euclidean",clustering_method="ward.D",
annotation_palette=NULL,npalette_col=5,annotation_row=NULL,annotation_col=NULL,
annot_row_color=NULL,annot_col_color=NULL,display_colnames=T,
display_rownames=T,fontsize=4,row_fontsize=fontsize,col_fontsize=fontsize,
names_font_style="",names_fontface="plain",names_color="black",
legend_fontsize=fontsize,legend_font_style="",legend_fontface="plain",
legend_color="black",mat_legend_size=fontsize,display_number=F,seed=13, ...)
}
\arguments{
\item{data}{Data, file name or numeric dataframe/matrix to plot a heatmap.
For example "\code{\link{fheatmap_data}}". }
\item{header}{Logical, determining if the data file contains the names of 
the variables as its first line. (Default: TRUE)}
\item{scale}{To standardize the given dataframe/matrix. (Default: FALSE)}
\item{title}{Title of the heatmap. (Default: NA)}
\item{title_fontsize}{Fontsize of the title. (Default: 6)}
\item{title_color}{Color of the title. (Default: black)}
\item{title_font_style}{Fontstyle of the title.}
\item{title_fontface}{Fontface of the title. (Default: plain)}
\item{rowname}{Logical determining if the file contains row names  as its first
column. (Default: TRUE)}
\item{breaks}{A sequence of numbers that covers the range of values in matrix 
and is one element longer than mat_color vector. It is useful to assign 
different colors to different set of values.If value is NULL then the 
breaks are calculated automatically.}
\item{mat_color}{Vector of colors used in heatmap. If value is NULL colors are
calculated automatically.(Default: "green", "yellow","red")}
\item{cluster_rows}{Logical determining if clustering in rows to be done or 
not. (Default: FALSE)}
\item{cluster_cols}{Logical determining if clustering in columns to be done or
not. (Default: TRUE)}
\item{cut_rowtree}{Numeric value(N) to color N clusters in row dendogram.
(Default: 0)}
\item{cut_coltree}{Numeric value(N) to color N clusters in column dendogram.
(Default: 0)}
\item{display_tree_col}{Logical determining if column dendogram to be shown.
(Default: TRUE)}
\item{display_tree_row}{Logical determining if row dendogram to be shown. 
(Default: FALSE)}
\item{cluster_distance_rows}{Distance measure used in clustering rows. Possible
values are \code{"correlation"} for Pearson correlation and all the distances 
supported by \code{\link{dist}}, such as \code{"euclidean"}, etc.
(Default: "Euclidean")}
\item{cluster_distance_cols}{Distance measure used in clustering columns. 
Possible values are same, as for clustering_distance_rows.
(Default: "Euclidean")}
\item{clustering_method}{Clustering method used. For Clustering methods refer 
the same values as mentioned in \code{\link{hclust}}. (Default: "ward.D")}
\item{annotation_row}{Matrix or file with annotations of rows,
for example "\code{\link{annotation_row}}" .Each column defines the features 
for a specific row. The rows in the data and columns in the annotation are 
matched using corresponding row and column names. Note that color schemes 
takes into account if variable is continuous or discrete. If NULL then 
annotation for row is not drawn.(Default: NULL)}
\item{annotation_col}{Matrix or file with annotations of columns,
for example "\code{\link{annotation_col}}" . Each row defines the features for a
specific column. The columns in the data and rows in the annotation are matched 
using corresponding row and column names. Note that color schemes takes into 
account if variable is continuous or discrete. If NULL then annotation for 
columns is not drawn.(Default: NULL)}
\item{annot_row_color}{Matrix or file with colors for annotation
in row, for example "\code{\link{annotation_row_color}}" . If a file is given 
then row names  and column names  of annotation in row should be given
in the first row & column respectively. If NULL then default colors are printed.
(Default: NULL)}
\item{annot_col_color}{Matrix or file with colors for annotation in column,
 for example "\code{\link{annotation_col_color}}". If a file is given then 
 row names  and column names  of annotation in column should be given in the 
 first row & column respectively. If NULL then default colors are printed. 
 (Default: NULL)}
\item{annotation_palette}{RColorBrewer palette for colors of row & column 
annotations.(Default: NULL) Distinct color is selected for each feature in
anotation. Use "seed" parameter to fix random selection of colors. 
 Either  annotation_palette or aannotation color file can be given .
 (Default: NULL)}
\item{npalette_col}{Numeric(N) If "annotation_palette" given ,then N distinct
colors are selected from annotation_palette.Minimum 3, maximum depending on 
palette. (Default: 5)}
\item{seed}{Numeric(N) If "annotation_palette" given ,then random number N to 
fix random selection of colors from the given palette.}
\item{display_colnames}{Logical determining if column names  to be shown or not.
(Default: TRUE)}
\item{display_rownames}{Logical determining if row names  to be shown or not. 
(Default: TRUE)}
\item{fontsize}{Base fontsize for the heatmap. (Default: 4)}
\item{row_fontsize}{Fontsize for row names . (Default: fontsize)}
\item{col_fontsize}{Fontsize for column names . (Default: fontsize)}
\item{names_font_style}{Fontstyle for row names  and column names .}
\item{names_fontface}{Fontface for row names  and column names .
(Default: "plain", "bold", "italic", "bold-italic")}
\item{names_color}{Color for row names  and column names .}
\item{legend_fontsize}{Fontsize for legend annotation. (Default: fontsize)}
\item{legend_font_style}{Fontstyle for legend annotations.}
\item{legend_fontface}{Fontface for legend annotations.}
\item{legend_color}{Color for legend annotations.}
\item{mat_legend_size}{Fontsize for matrix legend. (Default: fontsize)}
\item{display_number}{Logical determining if the numeric values are printed 
into the cells.}
\item{\dots}{It is used to match unspecified formal arguments of a function.}
}

\details{
Multiple types of file(.txt, .csv, .xls, .xlsx or tab limited file) or a 
matrix/dataframe is accepted as input.
}

\author{
Vaishali Tumulu and Sivasish Sindiri

Maintainers: Vaishali Tumulu and Sivasish Sindiri <sentisci@gmail.com>
}

\examples{
 # Draw heatmaps
 fheatmap(fheatmap_data, title="Example Heatmap", title_fontsize=15, 
          title_color="coral4",title_fontface="italic")
 fheatmap(fheatmap_data, display_number = TRUE)
 
 # Add custom matrix color
 library(gplots)
 breaks <- seq(min(fheatmap_data),max(fheatmap_data), by=0.05)
 matrix_color_vector <- colorpanel(n=length(breaks)-1,low="green",mid="black",
                                    high="red")
 fheatmap(fheatmap_data, mat_color=matrix_color_vector,cluster_rows=TRUE)
 
 #Font style 
 fheatmap(fheatmap_data,names_fontface="italic",names_color="brown",fontsize=6)
 
 #Draw Dendograms
 fheatmap(fheatmap_data, cluster_rows=TRUE, cut_rowtree=2, cut_coltree=2, 
          display_tree_row=TRUE)
 
 # Generate annotations
 fheatmap(fheatmap_data, annotation_row=annotation_row,
          annotation_col=annotation_col)
 fheatmap(fheatmap_data, annotation_row=annotation_row, 
          annotation_col=annotation_col, 
          annot_row_color=annotation_row_color, 
          annot_col_color=annotation_col_color)
 fheatmap(fheatmap_data, annotation_row=annotation_row, 
          annotation_col=annotation_col,annotation_palette = "Dark2",
          npalette_col=5, seed=3)
 fheatmap(fheatmap_data, annotation_row=annotation_row,
          annotation_col=annotation_col,legend_fontsize=5,
          legend_fontface="bold", legend_color="red")
          
 #Complete heatmap
 fheatmap(fheatmap_data, cluster_rows=TRUE,display_tree_row=TRUE,
          title="Fantastic Heatmap",title_fontsize=15, 
          title_color="darkslateblue",title_fontface="italic",
          annotation_row=annotation_row,  annotation_col=annotation_col,
          annot_col_color=annotation_col_color,
          annot_row_color=annotation_row_color,names_font_style="mono",
          names_fontface="italic",names_color="coral4",fontsize=5,
          legend_fontsize=5,legend_fontface="italic",
          legend_color="coral4",cut_rowtree=2,cut_coltree=2,
          mat_legend_size=5)
 
}