## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        # Create the set of NULL 
        # Nothing is cahched.
        
        cache <- NULL
        
        # store a matrix
        setMatrix <- function(newValue){
        x <<- newValue
        # The matrix is assigned a new value
        # Flush the cache
        cache <<- NULL
        }
        
        # Matrix is stored in returns
        getMatrix <- function(){
        x
        }
        
        # Cache the given argument
        cacheInverse <- function(solve){
        cache <<- solve
        }
        
        # Get the cached value
        getInverse <- function(){
        cache
        }
        
        # Return a list. 
        # Name element of the list is a function
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        # Get the cached value
        inverse <- y$getInverse()
        
        # Return a cached value if there is 
        if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
        }
        
        # Get the matrix, calculate and store it in the cache.
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        # Return the inverse
        inverse
}

