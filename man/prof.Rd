\docType{data}
\name{prof}
\alias{prof}
\title{Wood density profile}
\format{A data.frame with more than 4K points of measurement
\itemize{
  \item{\code{x}}{  index of the point}
  \item{\code{density}}{  density value}
}}
\description{
A sample profile of wood density with several rings
}
\details{
The profile contain several distinct behaviours in
different seasons.
}
\examples{
data(profile)
with(prof, plot(x, density, type = 'l'))
}

