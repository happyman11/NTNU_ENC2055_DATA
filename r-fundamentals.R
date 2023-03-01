sessionInfo()



1 + 1
log(10)
1:5





x <- 5
y <- "wonderful"

x
print(x)
y
print(y)

z <- TRUE
z

x2 <- c(1, 2, 3, 4, 5, 6)
x2
y2 <- c("wonderful", "excellent", "brilliant")
y2
z2 <- c(TRUE, FALSE, TRUE)
z2


ex_list <- list("First element", 5:10, TRUE)
print(ex_list)

ex_array <- matrix(c(1,5,6,3,8,19),byrow = T, nrow = 2)
ex_array

ex_df <- data.frame(
  WORD = c("the", "boy", "you","him"),
  POS = c("ART","N","PRO","PRO"),
  FREQ = c(1104,35, 104, 34)
)
ex_df



class(c)
class(vector)
class(print)

ex_array <- matrix(c(1,5,6,3,8,19),byrow = T, nrow = 2)
ex_array

print_out_user_name <- function(name = ""){
  cat("The current username is: ", name, "\n")
}

print_out_user_name(name = "Alvin Cheng-Hsien Chen")
print_out_user_name(name = "Ada Lovelace")





x <- 1:4
y <- 6:9 
z <- x + y
z

z <- numeric(length = length(x))

for(i in 1:length(x)){
  z[i] <- x[i]+y[i]
} # endfor

z

x >= 5
x < 2
y == 8



## install.packages("tidyverse")
## install.packages(c("ggplot2", "devtools", "dplyr"))



## ?log
## ?read.table
