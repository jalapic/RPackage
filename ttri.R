#' Get Triangle Transitivity of Sociomatrix
#'
#' @param m A frequency binary win-loss matrix
#' @return Pt and t.tri
#' @examples
#' ttri(caribou)
#' @importFrom igraph "graph.adjacency"
#' @importFrom igraph "triad.census"
#' @section Further details:
#' Algorithm described in D. Shizuka and D. B. McDonald, 2012,
#' A social network perspective on transitivity and linearity
#' in dominance hierarchies.  Animal Behaviour.
#' DOI:10.1016/j.anbehav.2012.01.011
#' Code adapted from original code by Dai Shikua - see
#' http://www.shizukalab.com/toolkits/sna/triangle-transitivity
#' @export

ttri=function(m){
mat <- get_di_matrix(as.matrix(m))
diag(mat)=0
g = igraph::graph.adjacency(mat, mode="directed", diag=FALSE)
tri=igraph::triad.census(g)
Ntri=sum(tri*as.vector(c(0,0,0,0,0,0,0,0,1,1,0,1,1,1,1,1)))
sumtri = sum(tri*as.vector(c(0,0,0,0,0,0,0,0,1,0,0,1,1,0.5,0.75,0.75)) )
Pt=sumtri/Ntri
ttri.val = 4*(Pt-0.75)
return(list("Pt"=Pt, "ttri"=ttri.val))
}
