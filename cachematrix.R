## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
	## Declare variable to store inverse value and set it NULL
	inverseval <- NULL
	
	## Declare set function to take matrix argument
	set <- function(matrix_a) 
	{
		## Direct x to matrix_a
		x <<- matrix_a
	
		## use inverseval
		inverseval <- NULL
	}
	## Declare get function
	get <- function() 
	{
		x
	}
	## Declare getinverseval function
	getinverseval <- function ()
	{
		inverseval
	}
	## Declare setinverseval function
	setinverseval <- function (inverseval)
	{
		cache_inverseval <<- inverseval
	}
	## out cahe list
	list(set = set, get = get, setinverseval = setinverseval, getinverseval = getinverseval)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) 
        ## Return a matrix that is the inverse of 'x'
        ## x got created in makeCacheMatrix
{
	## look for cache memory
	inverseval <- x$getinverseval()
	
	##if cache not null then return inverseval cached
	if(!is.null(inverseval)) 
	{
	    
	    return(inverseval)
	  }
  	## direct matrix
  	bymat <- x$get()
  	new_inverseval <- solve(bymat)
	x$setinverseval(inverseval)
	
	##return
	return(new_inverseval)
	

}
