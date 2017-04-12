#' Transforms a frequency interaction sociomatrix (valued data) into a dichotomized 1/0 matrix
#'
#' @param m A matrix with individuals ordered identically in rows and columns.
#' @param type Determines the type of dichotomized matrix to be returned.
#'  \strong{\code{type}="wl"} is the default which returns a win-loss matrix
#'  with a '1' representing a consistent winner and a '0' representing a
#'  consistent loser for each dyad of the matrix. A consistent winner is
#'  defined as being the individual in each dyad that has absolutely more
#'  wins than defeats.   In the default condition if competitors have the
#'  same number of wins each, they both receive a 0.
#'  If \strong{\code{type}="wlties"} the default dichotomized win-loss
#'  matrix will be returned but it will also return 0.5 into cells for tied
#'  relationships.
#' @return A dichotomized win/loss or presence/absence matrix.
#' @examples
#' get_di_matrix(bonobos)
#' get_di_matrix(caribou)
#' @section References:
#' Appleby, M. C. 1983. The probability of linearity in hierarchies.
#' Animal Behaviour, 31, 600-608.
#' @export

get_di_matrix <- function(m, type="wl"){



if(type=="wl") {
m <- as.matrix(m)
m <- (m > t(m)) + 0
return(m)
}

if(type=="wlties") {
m <- as.matrix(m)
m <-((m > t(m)) + 0)  + ((m == t(m)) + 0)/2
return(m)
}


}
