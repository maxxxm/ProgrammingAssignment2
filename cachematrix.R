## The functionn is created to cashe the inverse computationn of a martrix to reduce recomputation

## The fucntion is created to cache matrix and perform inverse opration

makeCacheMatrix <- function(x = matrix()) {
    i<-NULL
  set<- function(y){
    x<<- y
    i<<- NULL
  }
  
  get <- function() x
  setinverse<-function(inverse) i<<- inverse
  getinverse<-function() i
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  
}


## The function is created to call cached matrix and peform inverse, and return cached inversed matrix if already calculated.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cashed data")
    return(i)
  }
  data <- x$get()
  i <- solve(data,...)
x$setinverse(i)
i
        ## Return a matrix that is the inverse of 'x'
}
