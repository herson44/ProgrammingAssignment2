## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function calculate de inverse of a matrix x, and cache that inverse 
## in order to reuse in other program in the object inv_mat_H.

makeCacheMatrix <- function(x = matrix()) {
inv_mat_H <- NULL
    set_H <- function(h) {

## Assign the matrix to actual Enviroment

            x <<- h
            inv_mat_H <<- NULL}
    get_H <- function() x
    
    
    set_inverse <- function(inverse_H) inv_mat_H <<-inverse_H
    get_inverse <- function() inv_mat_H

##Set the results in a list

    list(set_H = set_H, get_H = get_H,
         set_inverse = set_inverse,
         get_inverse = get_inverse)

}


## Write a short comment describing this function
## This fuction calculate the inverse of the same matrix x, but first evaluate if that inverse
##had been already calculated,for that it evaluates inv_mat_H  if yes if only reuse this inverse.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
    inv_mat_H <- x$get_inverse()
    if (!is.null(inv_mat_H)) {
        message("Trying get cached inverse matrix (inv_mat_H")
        return(inv_mat_H)

## If it can not get the inverse, it calculates the inverse of the matrix        
        
    } else {
        inv_mat_H <- solve(x$get())
        x$set_inverse(inv_mat_H)
        return(inv_mat_H)
    }
}
