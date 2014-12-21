##functions to calculate inverse of matrix and cache it for rapid retrieval
##time-saving functions
## Write a short comment describing this function
### Saves the matrix to variable x, inverse to variable invMatrix in scope
makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  set <- function(y) {
    x <<- y
    invMatrix <<- NULL
  }
  get <- function() {
    x
  }
  setSolve <- function(solve) {
    invMatrix <<- solve
  }
  getSolve <- function() {
    invMatrix
  }
  list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## Write a short comment describing this function
## retrieve inverse matrix from cached inverse created by makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invMatrix <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(invMatrix)
  }
  data <- x$get()
  invMatrix <- solve(data, ...)
  x$setSolve(invMatrix)
  invMatrix
}
