## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv_mat_H <- NULL
    set <- function(h) {

#Assign the matrix to actual Enviroment

        mat_H <<- h
        mat_H <<- NULL
    }
    get_mat_H <- function() x
    set_inverse <- function(inverse_H) inv_mat_H <<-inverse_H
    get_inverse <- function() inv_mat_x

#Set the results in a list

    list(set = set, get = get,
         set_inverse = set_inverse,
         get_inverse = get_inverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
    inv_x <- x$get_inverse()
    if (!is.null(inv_mat_H)) {
        message("getting cached inverse matrix")
        return(inv_mat_H)
    } else {
        inv_mat_H <- solve(x$get())
        x$set_inverse(inv_mat_H)
        return(inv_mat_H)
    }
        ## Return a matrix that is the inverse of 'x'
}
