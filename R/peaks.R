#' Identify peaks
#' 
#' Identify local maxima in a numeric vector.
#' 
#' A local maximum is defined as a value larger than its neighbours in a window 
#' defined by \code{span.abs}. Peaks are local maxima with values above the 
#' given threshold.
#' @param x a numeric vector
#' @param span.abs NUMERIC the absolute number of points defining the window
#' @param threshold NUMERIC only maxima above this value will be identified as 
#'   peaks
#' @return a vector of logical values, indicating whether ther is a peak at each
#'   point.
#' @references For this function we re-used code from the former CRAN package 
#'   \code{ppc} \url{http://statweb.stanford.edu/~tibs/PPC/Rdist/index.html}
#' @export
#' @useDynLib peaks
#' @examples
#' data(profiles)
#' pks <- peaks(profiles[[1]]$density, span = 60, threshold = .35)
#' with(profiles[[1]], plot(x, density, type = 'l'))
#' with(profiles[[1]][pks, ], points(x, density, pch = 19, col = 'red'))
peaks <- function(x, span.abs, threshold = 0) {
  pks <- ppc.peaks(x, span = span.abs/length(x))
  trs <- x > threshold
  return(pks & trs)
}

#' Identify peaks
#' 
#' Original function from package \code{ppc}
#' 
#' @param x a numeric vector
#' @param span NUMERIC the \emph{relative} number of points defining the window
ppc.peaks <- function(x,span){
  
  
  # note-  changed this so that span is now a percentage rather than a
  #   number of points
  
  ispan<-trunc(length(x)*span)
  
  if(ispan%%2==0){ispan <- ispan+1}
  
  n <- length(x) 
  
  junk <- .Fortran("peaks",
                   x,
                   as.integer(ispan),
                   as.integer(n),
                   ans=integer(n),
                   PACKAGE="peaks")
  return(junk$ans==1)
}
