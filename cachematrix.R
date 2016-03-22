##Programming Assignment 2 - R Programming
##Data Science Specialization 
##Coursera
##
##These functions are part of completeing the second programming assignment for the R Programing Course
##
##These 2 functions are designed to help cache the inverse of a matrix, a process that is usually
##very labor intensive when dealing with large matrices. With these functions, the inverse will only
##have to be calculated once, and then retreived from cache for future uses, such as in loop functions.

##makeCacheMatrix:
##
##To begin this process, first we need to create a special matrix. This is accomplished with the
##makeCacheMatrix function. The input of this function is a varible that is of the matrix class.

makeCacheMatrix <- function(x = matrix()) { 
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
                }
        get <- function() x
        setinv <- function(inverse) z <<- inverse
        getinv <- function() z
        list(set=set,get=get,setinv=setinv,getinv=getinv)

}


##CacheSolve takes the matrix created in the previous function and computes the inverse and caches
##the results.  In addition, it stores the result, and returns it if called a second time.

cacheSolve <- function(x, ...) {z<-x$getinv()
        if(!is.null(z)){
                message("Retreving data")
                return(z)
        }
        data<-x$get()
        z <- solve(data, ... )
        x$setinv(z)
        z
        ## Return a matrix that is the inverse of 'x'
}
