makeCacheMatrix <- function(x=matrix()){
  inv <- NULL
  set<- function(y){
        x <<-y
        inv <<- NULL
  }
  get <- function(){x}
  setInverse <- function(inverse){inv <<- inverse}
  getInverse <- function(){inv}
  list(set = set, get = get, setInverse = SetInverse, getInverse = getInverse)
}

cacheSolve <- function(x,...){
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cache data")
      return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
