% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_dr.R
\name{plotDimReduceModule}
\alias{plotDimReduceModule}
\title{Plotting the Celda module probability on a dimensionality reduction plot}
\usage{
plotDimReduceModule(dim1, dim2, counts, celda.mod, modules = NULL,
  rescale = TRUE, size = 1, xlab = "Dimension_1",
  ylab = "Dimension_2", color_low = "grey", color_mid = NULL,
  color_high = "blue")
}
\arguments{
\item{dim1}{Numeric vector. First dimension from data dimensionality reduction output.}

\item{dim2}{Numeric vector. Second dimension from data dimensionality reduction output.}

\item{counts}{Integer matrix. Rows represent features and columns represent cells. This matrix should be the same as the one used to generate `celda.mod`.}

\item{celda.mod}{Celda object of class "celda_G" or "celda_CG".}

\item{modules}{Character vector. Module(s) from celda model to be plotted.}

\item{rescale}{Logical. Whether rows of the matrix should be rescaled to [0,1]. Default TRUE.}

\item{size}{Numeric. Sets size of point on plot. Default 1.}

\item{xlab}{Character vector. Label for the x-axis. Default "Dimension_1".}

\item{ylab}{Character vector. Label for the y-axis. Default "Dimension_2".}

\item{color_low}{Character. A color available from `colors()`. The color will be used to signify the lowest values on the scale. Default 'grey'.}

\item{color_mid}{Character. A color available from `colors()`. The color will be used to signify the midpoint on the scale.}

\item{color_high}{Character. A color available from `colors()`. The color will be used to signify the highest values on the scale. Default 'blue'.}
}
\value{
The plot as a ggplot object
}
\description{
Create a scatterplot for each row of a normalized gene expression matrix where x and y axis are from a data dimensionality reduction tool. The cells are colored by the module probability(s).
}
\examples{
\donttest{
celda.tsne <- celdaTsne(counts = celda.CG.sim$counts, 
                        celda.mod = celda.CG.mod)
plotDimReduceModule(dim1 = celda.tsne[,1], dim2 = celda.tsne[,2], 
                    counts = celda.CG.sim$counts, celda.mod = celda.CG.mod,
                    modules = c("L1","L2"))
}
}
