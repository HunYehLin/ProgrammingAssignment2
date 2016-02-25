## These function are used to create a speical object to store a matrix and cache it's inverse

## Define a matrix with four member functions to setup input matrix,   
## get input matrix, setup inverse matrix,   
## and get the inverse matrix.  

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


##Input a matrix and check cache for its inverse,   
##if yes, print out the message and inverse matrix  
##if no, calculate its inverse, setup the inveser matrix in cache

cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setInverse(i)
}
