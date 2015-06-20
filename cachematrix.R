 get <- function() x
      setsolve <- function(solve) solvex <<- solve
      getsolve <- function() solvex
      list(set = set,get = get, setsolve = setsolve,getsolve = getsolve)
}


## Write a short comment describing this function

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

