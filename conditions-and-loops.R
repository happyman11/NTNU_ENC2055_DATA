cond1 <- TRUE
class(cond1)

45 == 45
45 > 50
45 != 4

a <- "run"
b <- "run"
c <- "walk"
all <- c("run","walk","march")

a == b
a == c
c %in% all

## Create objects
a <- "42" ## char vec
b <- 42 ## num vec

## Comparison operations
a == 42.0
a > 40
a == b

## Inclusive OR
x <- 47
x > 30 | x < 50

## AND
x <- 55
x > 30 & x < 50

## NOT
x <- 55
x > 50
!x > 50

## Create objects
a <- c(TRUE, FALSE, TRUE, FALSE)
b <- c(FALSE, TRUE, TRUE, FALSE)

## Exclusive vs. Inclusive OR
xor(a, b)
a|b

## # Exclusive OR
## x <- c(1, 2, 3)
## y <- c(1, 3, 5)
## z <- xor(x %in% y, y %in% x)
## print(z)
## 
## # Inexclusive OR
## z2 <- x %in% y | y %in% x
## print(z2)

## TRUE & FALSE & TRUE
2 + 2 == 4 &
  2 + 2 == 5 &
  2 * 2 == 2 + 2

## TRUE & TRUE & TRUE
2 + 2 == 4 &
  !2 + 2 == 5 &
  2 * 2 == 2 + 2



input <- 113 # assuming that you have the input 113

## Assuming that the system pass code is `987`

if(input == 987){
  writeLines("Congratulations! Now you may get in!")
} else{
  writeLines("Sorry! Wrong password.")
}

input <- 987 # assuming that you have the input 987
if(input == 987){
  writeLines("Congratulations! Now you may get in!")
} else{
  writeLines("Sorry! Wrong password.")
}

## ## ------------------------------------- ##
## ## Run the entire code chunk all at once ##
## ## ------------------------------------- ##
## 
## ## User's input
## input <- readline(prompt = "Please enter your password:")
## 
## ## Passcode checking & output
## if (input == 987) {
##   writeLines("Congratulations! Now you may get in!")
## } else {
##   writeLines("Sorry! Wrong password.")
## } ## endif
## 



word_vec <- c("apple","banana","watermelon","papaya")

for(w in word_vec){
  word_nchar <- nchar(w)
  writeLines(as.character(word_nchar))
}

for(i in 1:length(word_vec)){
  word_nchar <- nchar(word_vec[i])
  writeLines(as.character(word_nchar))
}

## # writeLines() (This for-loop does not work!!)
## for(i in 1:length(word_vec)){
##   word_nchar <- nchar(word_vec[i])
##   writeLines(word_nchar)
## }
## 
## # `print()`
## for(i in 1:length(word_vec)){
##   word_nchar <- nchar(word_vec[i])
##   print(word_nchar)
## }

## #######################################################
## ## WARNING!!! This code chunk is UNGRAMMATICAL!!!!!! ##
## #######################################################
## 
## numOfChars <- for(i in 1:length(word_vec)){
##   word_nchar <- nchar(word_vec[i])
##   writeLines(as.character(word_nchar))
## }
## 









## --------------------------------------------  ##
## Please run the entire code chunk all at once! ##
## --------------------------------------------  ##

ans <- 90
guess <- 83
while (guess != ans) {
  cat("Your `guess` is too small! \nThe system will take care for you!\n")
  guess <- guess + 1
  cat("Now the system is adjusting your `guess` to ", guess, "\n\n")
}

cat('Great! The passcode is finally cracked.\n')









## --------------------------------------------  ##
## Please run the entire code chunk all at once! ##
## --------------------------------------------  ##

## Create a function object
guessMyNumber <- function() {
  ## Randomly select an integer from 1 to 100
  ans <- sample(1:100, size = 1)
  
  ## Instructions for user
  writeLines("Now I am thinking of a number between 1 and 100.")
  
  ## As long as user's guess is not the answer
  while (guess != ans) {
    ## Read the prompt input from user
    guess <- readline(prompt = "Please guess my number(1~100):")
    
    ## Convert input string into integer
    guess <- as.numeric(guess)
    
    ## if user's guess is smaller than the answer
    if (guess < ans) {
      writeLines("The answer is HIGHER.")
    ## if user's guess is larger than the answer
    } else if (guess > ans) {
      writeLines("The answer is LOWER")
    ## correct guess
    } else{
      writeLines(paste0("Good Job! You had the correct answer! My number is ", guess))
    } ## endif
  } ## endwhile
} ## endfunc

## guessMyNumber()
