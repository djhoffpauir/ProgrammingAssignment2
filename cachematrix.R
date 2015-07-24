## Put comments here that give an overall description of what your
## functions do

## The first part of the function sets te initial value of the matrix
## and prepares a placeholder for the inverse to be cached

## The second part of the function finds the matrix and
## then sets the value of the invers in the inv variable cached.

makeCacheMatrix <- function(x = matrix()) {
     s <- NULL
     set <- function(y) {
          x <<- y
          s <<- NULL
     }
     get <- function() x
     setsolve <- function(inv) s <<- inv
     getsolve <- function() s
     list(set = set,
          get = get,
          setsolve = setsolve,
          getsolve = getsolve)
}

## Write a short comment describing this function

## This function looks to see if inverse matrix has been cached, if it has
## not been cached, it calculates the inverse matrix.
cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     c <- makeCacheMatrix(x)
     sol <- c$getsolve()
     if(!is.null(sol)) {
          message("getting cached data")
          return(sol)
     }
     data <- c$get()
     sol <- c$setsolve(solve(x))
     sol
}

