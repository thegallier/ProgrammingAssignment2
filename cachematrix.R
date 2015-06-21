## Put comments here that give an overall description of what your
## functions do

## Set of two functions that allow the inverse of a matrix to be cached.
## if the object is not available in cache it gets computed and is cached

## Write a short comment describing this function
## First function of set of two.  Creates a custom object and related functions to get and set a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
      solvex<-NULL
      set <- function(y) {
            x <<- y
            solvex <<- NULL
      }
      get <- function() x
      setsolve <- function(solve) solvex <<- solve
      getsolve <- function() solvex
      list(set = set,get = get, setsolve = setsolve,getsolve = getsolve)
}


## Write a short comment describing this function
## Function gets the the inverse of a matrix from cache or stores it in cache if not available

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      solvex <- x$getsolve()
      if(!is.null(solvex)) {
          message("getting cached data")
          return(solvex)
      }
      xdata <- x$get()
      solvex <- solve (xdata,...)
      x$setsolve(solvex)
      solvex
}

