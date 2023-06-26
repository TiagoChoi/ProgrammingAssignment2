## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix contains a function to set and get a matrix,
## and set and get its inverse

makeCacheMatrix <- function(x= matrix()) {
inv <- NULL
set <- function(y) {
  x <<- y
  inv <<- NULL
}
get<- function() x  #gets us the matrix
setInv <- function() inv <<-solve(x) 
getInv <- function() inv #gets us the inverse matrix
list(set= set, get = get, setInv = setInv, getInv = getInv)
}


## cacheSolve contains a function to return the cached inverse data 
## or if it does not exists, it computes the inverse of the matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
inv <- x$getInv()
if (!is.null(inv)) {
  message("getting cached data")
  return(inv) #returns us the inverse value cached
}
mtx <- x$get() 
inv <- solve(mtx, ...)
x$setInv(inv)
inv  #returns us the inverse matrix
}

