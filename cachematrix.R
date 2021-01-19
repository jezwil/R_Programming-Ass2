## This pair of functions create a matrix, makes the inverse, and draws the 
## from cache if available

## makes a vector of mean values

makeCacheMatrix <- function(x = matrix()) {
  makeVector <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
  m}
}


## This function assesses whether the value is cached, and if so, draws it from
##memory

cacheSolve <- function(x, ...) {
      x<-solve(x)  ## Return a matrix that is the inverse of 'x'
  cachemean <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
 }
}
