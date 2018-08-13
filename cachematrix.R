##
## The combined makeCacheMatrix and cacheSolve functions processes matrix data 
## into the lexical parent global environment and then transposes the rows into
## columns and vice versa
##

## The below function takes as input a matrix and loads the entries into
## the global parent environment (lexical scoping)
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function() m <<- matrix
  getmatrix <- function() m
  list(set = setmatrix, get = getmatrix)
}

## The below function takes in a matrix from the parent environment and
## transposes the rows and columns via the R solve() function.
cacheSolv <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}

