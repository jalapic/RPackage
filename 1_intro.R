
### Install These Packages

install.packages("devtools")
install.packages("roxygen2")



### Examples of using  Functions when not in package.

mat <- matrix(c(NA,2,30,6,19,122,0,NA,18,
              0,19,85,0,1,NA,3,8,84,0,0,0,NA,267,50,0,
              0,0,5,NA,10,1,0,4,4,1,NA), ncol=6)

mat

get_di_matrix(mat)
dci(mat)
ttri(mat)


###  How do we start to put these into a package ?

