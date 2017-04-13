# Functions I want to include in my R package


### Calculates Triangle Transitivity Index
ttri <- function(m){
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


### Calculates Directional Consistency Index
dci<-function(m){
  m<-as.matrix(m)
  diag(m)<-0
  N=sum(m)/2
  dc=sum(abs(m-t(m)))/2/sum(m)
  return(dc)
}


### Convert Raw Matrix into a Binary 1/0 Matrix
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


