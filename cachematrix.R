## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Making de function 1
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Write a short comment describing this function
# Making de function 2
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
           m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get ()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
#Testing the functions
a <- makeCacheMatrix( matrix(c(1,2,12,13), nrow = 2, ncol = 2) )
summary(a);
a$get();
cacheSolve(a)
