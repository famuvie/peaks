#' Wood density profile
#' 
#' A sample profile of wood density with several rings
#' 
#' The profile contain several distinct behaviours in different seasons.
#' 
#' @format A data.frame with more than 4K points of measurement
#' \itemize{
#'   \item{\code{x}}{  index of the point}
#'   \item{\code{density}}{  density value}
#' }
#' @name prof
#' @docType data
#' @examples 
#' data(profile)
#' with(prof, plot(x, density, type = 'l'))
NULL
