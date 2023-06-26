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
get<- function() x
setInv <- function() inv <<-solve(x) 
getInv <- function() inv
list(set= set, get = get, setInv = setInv, getInv = getInv)
}


## cacheSolve contains a function to return the cached data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
inv <- x$getInv()
if (!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
mtx <- x$get()
inv <- solve(mtx, ...)
x$setInv(inv)
inv
}

