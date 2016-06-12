## Put comments here that give an overall description of what your
## functions do

## This function creates an object "m", which caches the value of a matrix for future reference.
## It also sets the value of an inverse cache to NULL, for reference by the cacheSolve.

makeCacheMatrix <- function(x = matrix()) {
  
  
  m <<- x
  inverse <<- NULL
  
  list (matrix = m, inverse = inverse)
  
}


## This function returns the inverse of m (cached from the previous function). If m is the same
## as its cached version (from makeCacheMatrix), and there is no cached value for its inverse,
## then the function will calculate the inverse. Otherwise, it will simply return the cache'd value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
  #if inverse has already been calculated, and matrix has not changed, retrieve inverse from cache
  if (!is.null(inverse) & identical(x, m)) {
    message("Getting cached data")
    output <- inverse
  }
  
  else {
    message("Calculating inverse")
    output <- solve(x)
    inverse <<- output
  }
  
  output
    
}
