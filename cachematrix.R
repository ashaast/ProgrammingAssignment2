## the following 2 functions will calculate the inverse of a matrix
## and cache its value

## The first function creates a matrix that can cache its inverse

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


## second function computes the inverse but if inverse is already calculated
## then cachesolve retrieves the inverse from the cache.

cacheSolve <- function(x=matrix(), ...) {
       m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}

