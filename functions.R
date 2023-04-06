hello <- function(){
  print("How are you doing?")
}

hello()
hello()

hello <- function(name){
  cat('How are you doing,', name)
}

hello(name='Alvin')

cat(name)

hello <- function(name = "Alvin"){
  cat('How are you doing,', name)
} 

## call 1
hello()

## call 2
hello(name = "Superman")

num <- sample(1:10, 3)
num

out <- cat("This is a sentence") # `cat()` has no return
out

out <- hello(name = "John")

out







set.seed(123)
sample(x = c(1:10), size = 5, replace=FALSE, prob=NULL)

set.seed(123)
sample(c(1:10), 5, FALSE, NULL)

sample(c(1:10), 5)

## Main function
hello <- function(name) {
  user_email <- email(user = name)
  out <- paste0('How are you doing, ', name, '. ', user_email)
  
  return(out)
}

## Embedded function
email <- function(user) {
  out <- paste0('Your email is: ', tolower(user), '@whatever.org')
  return(out)
}

## call `hello()`
hello('Alvin')

customer <- function(){
  id <- 123
  age <- 25
  nation <- "TW"
}
customer()
cat(id)

customer <- function(){
  id <- 123
  age <- 25
  nation <- "TW"
  print(age)
}

client <- function(){
  age <- 50
}

client()
customer() # returning `age` from `customer()` not from `client()`

customer <- function(){
  age <- 25
  cat('The customer works at', company)
}
company <- "NTNU"
customer()

customer <- function(){
  age <- 25
  cat(age)
}

client <- function(){
  age <- 55
  cat(age)
}

age <- 100

customer()
client()
cat(age)

myLog <- function(x, myBase){
  return(log(x,myBase))
}

## OK
myLog(100, 10)
myLog(8, 2)

## Not OK
myLog(10, -1) ## base is negative
myLog(-10, 10) ## x is negative
myLog("100", 10) ## x is not numeric



myLog <- function(x, myBase) {
  tryCatch({
    ##----- original_code -----##
    return(log(x, myBase))
    
  }, warning = function(w) {
    ##----- warning_handler_code -----##
    if (x < 0)
      print('WARNING!! `x` must be a positive number')
    if (myBase < 0)
      print('WARNING!! `myBase` must be a positive number')
    
  }, error = function(e) {
    ##----- error_handler_code -----##
    if (!is.numeric(x) | !is.numeric(myBase))
      print('ERROR!! Either `x` or `myBase` must be a positive number not a string')
    
  }, finally = {
    ##----- cleanup_code (optional) -----##
     ## print('Function completed!!')
    
  }) ## endtrycatch
} ## endfunc

myLog(100,10)
myLog(100, exp(1)) ## same as `log(100)` with natural E as the base
myLog(10,-1) ## Warning
myLog('w12',0) ## Error
myLog(8,"2") ## Error

x <- c(1:10) ## num vec
y <- letters[1:10] ## char vec
z <- factor(y)## factor

cat(x) ## cat numbers

cat(y) ## cat characters

cat(z) ## cat factor 

cat("Numbers:", x, "Characters:", y) ## concatenated strings

writeLines(y) ## char vec

writeLines(x) ## !!Not working with num vec

writeLines(z) ## !!Not Working with factor

writeLines("Characters:", y) ## !! Not Working..

print(x) ## print num vec

print(y) ## print char vec

print(z) ## print factor

print(x, y)
