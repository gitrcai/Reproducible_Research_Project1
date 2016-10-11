cacheSolve <- function(x, ...) {
        ## read inverse value from cache, if empty, calculate inverse and sent to cache, otherwise get the inverse
        
        inv = x$getinv()
        if (!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data = x$get()
        inv = solve(data, ...)
        x$setinv(inv)
        return(inv)
}