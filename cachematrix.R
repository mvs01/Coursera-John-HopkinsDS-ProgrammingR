##
## The combined makeCacheMatrix and cacheSolve functions processes matrix data 
## into the lexical parent global environment and then transposes the rows into
## columns and vice versa
##

## The below function takes as input a matrix and loads the entries into
## the global parent environment (lexical scoping)

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  parentMatrix <-- x
  
}

## The below function takes in a matrix from the parent environment and
## transposes the rows and columns via the R t() function.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inverseMatrix <- t(x)
  
}

x <- matrix(1:10, 5, 2)

cachedMatrix <- abs(makeCacheMatrix(x))
cachedMatrix

xInverse <- cacheSolve(cachedMatrix)
xInverse


