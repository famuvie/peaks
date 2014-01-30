\name{peaks}
\alias{peaks}
\title{Identify peaks}
\usage{
peaks(x, span.abs, threshold = 0)
}
\arguments{
  \item{x}{a numeric vector}

  \item{span.abs}{NUMERIC the absolute number of points
  defining the window}

  \item{threshold}{NUMERIC only maxima above this value
  will be identified as peaks}
}
\value{
a vector of logical values, indicating whether ther is a
peak at each point.
}
\description{
Identify local maxima in a numeric vector.
}
\details{
A local maximum is defined as a value larger than its
neighbours in a window defined by \code{span.abs}. Peaks
are local maxima with values above the given threshold.
}
\examples{
data(profile)
pks <- peaks(prof$density, span = 60, threshold = .35)
with(prof, plot(x, density, type = 'l'))
with(prof[pks, ], points(x, density, pch = 19, col = 'red'))
}
\references{
For this function we re-used code from the former CRAN
package \code{ppc}
\url{http://statweb.stanford.edu/~tibs/PPC/Rdist/index.html}
}

