#' Wood density profiles
#' 
#' A list with sample profiles of wood density with several rings
#' 
#' The profiles contain several distinct behaviours in different seasons.
#' 
#' @format A list of data frames with more than 4K points of measurement
#' \itemize{
#'   \item{\code{x}}{  index of the point}
#'   \item{\code{density}}{  density value}
#' }
#' @name profiles
#' @docType data
#' @examples 
#' data(profiles)
#' str(profiles)
#' par(mfrow = c(length(profiles), 1))
#' lapply(profiles, function(p) with(p, plot(x, density, type = 'l')))
NULL
