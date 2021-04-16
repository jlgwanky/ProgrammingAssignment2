## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        ##In this part, the function generates a special matrix in which its inverse can be cached.
makeCacheMatrix <- function(x = matrix()) { ## This will describe the statement containing the matrix's default mode.
inv<-NULL ## It sets the inv to NULL and stores the inverse matrix's value.
        set<-function(y){ ## Describes the function which then assign new values to the variables.
                x<<-y ## The parent environment of the matrix's value.
                inv<<-NULL ## If inv has been reset to null by a recently made matrix, this will be used.
}
        get<-function()x ## Needed function is defined.
        setinverse<-function(inverse)inv<<-inverse ## Values of inv is being assigned to their parent environment.
        getinverse<-function()inv ## Value of inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) ## Used to state



## Write a short comment describing this function

##The returned special matrix's inverse by the makeCacheMatrix will be computed by the function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
