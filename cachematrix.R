## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makecacheMatrix is a function 
## to set and get the matrix, and set and get the inverse of the matrix
## x is a numerical matrix that pass in the the function as argument
makeCacheMatrix <- function(x = matrix()) {
  
  ## assign the object m to NULL initially
  m<-NULL
  
  ## set() is a function to set the matrix elements
  ## y is passed into the function set( ) as an argument
  ## x is assign to the value of y
  set<-function(y){
    
    ## assign y to x
    x<<-y
    
    ## assign NULL to m
    m<<-NULL
  }
  
  ## get()a function to get the matrix elements
  ## x is return
  get<-function()x
  
  ## setInv() is a function to set the inverse of the matrix
  ## solve is passed to the function setInv() as an argument
  ## m is assigned to the value of the argument, solve
  setInv<-function(solve) m <<- solve
  
  ## getInv() is a function to get the inverse of the matrix
  ## return m
  getInv<-function() m
  
  ## create a list 
  ## assign the value of set, get, setInv, getInv as the elements in the list
  list(set=set,get=get,setInv=setInv,getInv=getInv)
  

}


## Write a short comment describing this function

## cacheSolve is a function to solve the inverse of matrix
cacheSolve <- function(x, ...) {
        
        ## assign the element getInv() in the list of x to m 
        ## to check if the m is NULL object or not
        
        m<-x$getInv()
        
        ## if m is exists, which is not a null object
        ## return the message that "getting cached data"
        ## return m
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        
        ## assign the get() element in the list of x to data
        ## solve the data, to get the inverse and assign to m
        data<-x$get()
        m<-solve(data,...)
        
        ## pass in the m as argument to the setInv() in the list of x
        x$setInv(m)
        
        ## Return a matrix that is the inverse of 'x'
        m
          
}
