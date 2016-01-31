# Before using this function first time you must create the xa object
# with the expression : xa <- NULL
# then, the function can be used just typing cacheSolve(a),cacheSolve(b), etc.
cacheSolve <- function(x = matrix())
{
  if(identical(xa, x))
  {                                 # if (xa == x) solve(x) has already been calculated
    message("getting cached data")
  }
  else
  {                                 # if (xa != x) x is a new matrix, solve(x) has to be calculated
    xa <<- x
    x_inv <<- solve(x)
    message("solving matrix")
  }
  return(x_inv)
}
