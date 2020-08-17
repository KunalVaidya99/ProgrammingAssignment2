<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
			inverse <- NULL     #inverse of matrix to be inverted initialized as NULL
			set<- function(y){
					x<<-y	
					inverse<<-NULL
			}
			get <- function() x
			setinverse <- function(invert) inverse<<-invert  #function for caching the inverse of matrix
			getinverse <- function() inverse #function for getting the inverse from cache
			list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

         }


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
			inverse<-x$getinverse() #getting inverse of x from cache
			if(!is.null(inverse)){   #checking whether the inverse of matrix is cached or not
				print("getting cached data")
				return(inverse)
			}
			data <- x$get()			
			inverse<-solve(data) 
			x$setinverse(inverse)  #the inverse of the matrix being cached
			inverse

}
>>>>>>> 044d591... Completed Assignment2
