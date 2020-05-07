
## the follwing function provide memory for the cache

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y){
  x <<- y
  m <<- NULL
}
  
  get <- function() x
  
  setinv <- function(solve) inv <<- solve
  
  getinv <- function() inv
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)


}


## the following function checks for existing inverse and stores the inverse 

cacheSolve <- function(x, ...) {
  inv <- x$getinv
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(x, ...)
  x$setinv(inv)
  inv
## Returns a matrix that is the inverse of 'x'
}
