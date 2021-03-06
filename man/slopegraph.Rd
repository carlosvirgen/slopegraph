% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slopegraph.R
\name{slopegraph}
\alias{slopegraph}
\alias{slopegraph-package}
\title{Create Slopegraph from a data frame}
\usage{
slopegraph(data, main = NULL, xlab = "", ylab = "",
  xlabels = names(data), xlim = c(0.5, ncol(data) + 0.5),
  ylim = c(min(data, na.rm = TRUE) - diff(range(data, na.rm = TRUE))/100,
  max(data, na.rm = TRUE) + diff(range(data, na.rm = TRUE))/100), bty = "n",
  xaxt = "n", yaxt = "n", panel.first = NULL, panel.last = NULL,
  labpos.left = 2, labpos.right = 4, decimals = 0L,
  col.lines = par("fg"), col.lab = col.lines, col.num = col.lines,
  col.xaxt = par("fg"), offset.x = NULL, offset.lab = 0.1, cex.lab = 1,
  cex.num = 1, family = "serif", font.lab = 1, font.num = 1,
  lty = par("lty"), lwd = par("lwd"), mai = NULL, na.span = FALSE, ...)
}
\arguments{
\item{data}{An observation-by-period data.frame, with at least two columns. Missing values are allowed.}

\item{main}{The main title of the plot. Default is \code{NULL} (none). See \code{\link[graphics]{par}}.}

\item{xlab}{The x-axis label for the plot. Default is \code{''} (none). See \code{\link[graphics]{par}}.}

\item{ylab}{The y-axis label for the plot. Default is \code{''} (none). See \code{\link[graphics]{par}}.}

\item{xlabels}{The labels to use for the slopegraph periods. Default is \code{names(data)}.}

\item{xlim}{The x-axis limits of the plot. Automatically calculated by default.}

\item{ylim}{The y-axis limits of the plot. Automatically calculated by default.}

\item{bty}{The box type for the plot. Default is \code{'n'} (none). See \code{\link[graphics]{par}}.}

\item{xaxt}{The x-axis type for the plot. Default is \code{'n'} (none). See \code{\link[graphics]{par}}.}

\item{yaxt}{The y-axis type for the plot. Default is \code{'n'} (none). See \code{\link[graphics]{par}}.}

\item{panel.first}{An expression to add something between drawing the blank canvas and adding the plot content (i.e., behind the slopegraph). Default is \code{NULL}.}

\item{panel.last}{An expression to add something after adding the plot content. Default is \code{NULL}.}

\item{labpos.left}{The \code{pos} (positioning) parameter for the leftside observation labels. Default is \code{2}. See \code{\link[graphics]{par}}. If \code{NULL}, labels are not drawn.}

\item{labpos.right}{The \code{pos} (positioning) parameter for the rightside observation labels. Default is \code{2}. See \code{\link[graphics]{par}}. If \code{NULL}, labels are not drawn.}

\item{decimals}{The number of decimals to display for values in the plot. Default is \code{0} (none).}

\item{col.lines}{A vector of colors for the slopegraph lines. Default is \code{par('fg')}.}

\item{col.lab}{A vector of colors for the observation labels. Default is \code{par('fg')}.}

\item{col.num}{A vector of colors for the number values. Default is \code{par('fg')}. If \code{NULL}, labels are not drawn.}

\item{col.xaxt}{A character string containing the x-axis color. Default is \code{par('fg')}.}

\item{offset.x}{A small offset for \code{segments}, to be used when positioning the numeric values. Default is \code{NULL} (set automatically based on the data.}

\item{offset.lab}{A small offset for the observation labels. Default is \code{.1}.}

\item{cex.lab}{A numeric value indicating the size of row labels. Default is \code{1}. See \code{\link[graphics]{par}}.}

\item{cex.num}{A numeric value indicating the size of numeric labels. Default is \code{1}. See \code{\link[graphics]{par}}.}

\item{family}{The font family to use in the plots. Set to \dQuote{serif} by default.}

\item{font.lab}{Default is \code{1}. See \code{? text}.}

\item{font.num}{Default is \code{1}. See \code{? text}.}

\item{lty}{A vector of line type values for the slopegraph lines. Default is \code{par("lty")}. See \code{\link[graphics]{par}}.}

\item{lwd}{A vector of line width values for the slopegraph lines. Default is \code{par("lwd")}. See \code{\link[graphics]{par}}.}

\item{mai}{A margin specification. Default is \code{NULL}. See \code{\link[graphics]{par}}.}

\item{na.span}{A logical indicating whether line segments should span periods with missing values. The default is \code{FALSE}, such that some segments are not drawn.}

\item{\ldots}{Additional arguments to \code{plot}.}
}
\value{
A five-variable data frame, where each row contains: the row number from \code{data}, \samp{x1}, \samp{x2}, \samp{y1}, and \samp{y2} coordinates for each drawn segment, invisibly.
}
\description{
Convert an R data frame (containing a panel dataset, where rows are observations and columns are time periods) into an Edward Tufte-inspired Slopegraph.
}
\examples{
## Tufte's Cancer Graph (to the correct scale)
data(cancer)
slopegraph(cancer, col.lines = 'gray', xlim = c(-.5,5.5),
           xlabels = c('5 Year','10 Year','15 Year','20 Year'))

## Tufte's GDP Graph
data(gdp)
slopegraph(gdp, col.line='gray', xlabels = c('1970','1979'), 
    main = 'Current Receipts of Goverment as a Percentage of Gross Domestic Product')

## Ranking of U.S. State populations
data(states)
slopegraph(states, col.line='black', ylim = c(38,0),
           main = 'Relative Rank of U.S. State Populations, 1790-1870')

}
\author{
Thomas J. Leeper
}
\references{
\url{http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0003nk}

Tufte, Edward. \emph{The Visual Display of Quantitative Information}. Graphics Press.

Tufte, Edward. \emph{Beautiful Evidence}. Graphics Press.
}
\seealso{
\code{\link{cancer}}, \code{\link{gdp}}, \code{\link{states}}
For a ggplot2 version, use \code{\link{ggslopegraph}}.
}

