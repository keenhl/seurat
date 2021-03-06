% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualization.R
\name{ColorDimSplit}
\alias{ColorDimSplit}
\title{Color dimensional reduction plot by tree split}
\usage{
ColorDimSplit(
  object,
  node,
  left.color = "red",
  right.color = "blue",
  other.color = "grey50",
  ...
)
}
\arguments{
\item{object}{Seurat object}

\item{node}{Node in cluster tree on which to base the split}

\item{left.color}{Color for the left side of the split}

\item{right.color}{Color for the right side of the split}

\item{other.color}{Color for all other cells}

\item{...}{
  Arguments passed on to \code{\link[=DimPlot]{DimPlot}}
  \describe{
    \item{\code{dims}}{Dimensions to plot, must be a two-length numeric vector specifying x- and y-dimensions}
    \item{\code{cells}}{Vector of cells to plot (default is all cells)}
    \item{\code{cols}}{Vector of colors, each color corresponds to an identity class. This may also be a single character
or numeric value corresponding to a palette as specified by \code{\link[RColorBrewer]{brewer.pal.info}}.
By default, ggplot2 assigns colors. We also include a number of palettes from the pals package.
See \code{\link{DiscretePalette}} for details.}
    \item{\code{pt.size}}{Adjust point size for plotting}
    \item{\code{reduction}}{Which dimensionality reduction to use. If not specified, first searches for umap, then tsne, then pca}
    \item{\code{group.by}}{Name of one or more metadata columns to group (color) cells by
(for example, orig.ident); pass 'ident' to group by identity class}
    \item{\code{split.by}}{Name of a metadata column to split plot by;
see \code{\link{FetchData}} for more details}
    \item{\code{shape.by}}{If NULL, all points are circles (default). You can specify any
cell attribute (that can be pulled with FetchData) allowing for both
different colors and different shapes on cells}
    \item{\code{order}}{Specify the order of plotting for the idents. This can be
useful for crowded plots if points of interest are being buried. Provide
either a full list of valid idents or a subset to be plotted last (on top)}
    \item{\code{label}}{Whether to label the clusters}
    \item{\code{label.size}}{Sets size of labels}
    \item{\code{repel}}{Repel labels}
    \item{\code{cells.highlight}}{A list of character or numeric vectors of cells to
highlight. If only one group of cells desired, can simply
pass a vector instead of a list. If set, colors selected cells to the color(s)
in \code{cols.highlight} and other cells black (white if dark.theme = TRUE);
will also resize to the size(s) passed to \code{sizes.highlight}}
    \item{\code{cols.highlight}}{A vector of colors to highlight the cells as; will
repeat to the length groups in cells.highlight}
    \item{\code{sizes.highlight}}{Size of highlighted cells; will repeat to the length
groups in cells.highlight}
    \item{\code{na.value}}{Color value for NA points when using custom scale}
    \item{\code{ncol}}{Number of columns for display when combining plots}
    \item{\code{combine}}{Combine plots into a single \code{\link[patchwork]{patchwork}ed}
ggplot object. If \code{FALSE}, return a list of ggplot objects}
  }}
}
\value{
Returns a DimPlot
}
\description{
Returns a DimPlot colored based on whether the cells fall in clusters
to the left or to the right of a node split in the cluster tree.
}
\examples{
pbmc_small
pbmc_small <- BuildClusterTree(object = pbmc_small, verbose = FALSE)
PlotClusterTree(pbmc_small)
ColorDimSplit(pbmc_small, node = 5)

}
\seealso{
\code{\link{DimPlot}}
}
