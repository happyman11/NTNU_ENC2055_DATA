# ## overall setting for the entire book
# knitr::opts_chunk$set(echo = TRUE,
#                       tidy = FALSE,
#                       class.source="Rchunk",
#                       class.output = "Rout",
#                       comment = "")#, class.output="Rout")

knitr::include_graphics(c("images/engine.png", "images/dashboard.png"))

knitr::include_graphics("images/Rstudio_install.png")

## - Important notes:

##   - Do not have Chinese characters in your directory names or on the path to the files

##   - Do not have spaces and weird symbols in your file path:

##     - `D:/R`

##     - `D:/Rstudio`

##     - `/User/Alvinchen/`


knitr::include_graphics("images/current-r-rstudio-version.png")

knitr::include_graphics("images/Rstudio_interface.png")

1 + 1
log(10)
1:5

## Please create a new R script in Rstudio. You may name the script as "ch2.R". Please write the following codes in the script and pass the whole script to the R Console.


## scores <- rnorm(1000, mean = 75, sd = 5.8)
## plot(density(scores))
## hist(scores)
## boxplot(scores)

## Find the answer to the following mathematical calculation in R.


ans <- 2^(2+1) - 4 + 64^((-2)^(2.25-1/4))
print(ans)

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

knitr::include_graphics("images/r-data-structure.png")

class(c)
class(vector)
class(print)

ex_array <- matrix(c(1,5,6,3,8,19),byrow = T, nrow = 2)
ex_array

## **Parameter** is a variable in the declaration of function. **Argument** is the actual value of this variable that gets passed to function.


print_out_user_name <- function(name = ""){
  cat("The current username is: ", name, "\n")
}

print_out_user_name(name = "Alvin Cheng-Hsien Chen")
print_out_user_name(name = "Ada Lovelace")

## Please define a function called `make_students_happy()`, which takes a multi-element numeric vector, and returns also a numeric vector, with the value of each element to be the square root of the original value multiplied by 10.


make_students_happy<- function(old_scores){
  sqrt(old_scores)*10
}

student_current_scores <- c(20, 34, 60, 87, 100)
make_students_happy(old_scores = student_current_scores)

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

## For more information on vectorization, please watch the following YouTube clip from Roger Peng.


knitr::include_graphics("images/Rstudio_editor.png")

## install.packages("tidyverse")
## install.packages(c("ggplot2", "devtools", "dplyr"))

## During the R package installation, if you see messages like `installation of package XXX had non-zero exit status`, this indicates that the package has **NOT** been properly installed in your R environment. That is, something is **WRONG** (See below as well). You need to figure out a way to solve the issues indicated in the error messages so that you can successfully install the package in your R system.


## Before you install R packages from source, you need to install a few R tools for your operating system. These tools are necessary for you to build the R packages from the source.

## 

## For MacOS Catalina users, please install the following applications on your own. They are necessary for building R packages from source.

## 

## - [Command Line Tools for Xcode 11.X](https://developer.apple.com/download/more/)

##   - You may need to log in with your Apple ID and find the *download* page.

## - clang7/8 from https://cran.r-project.org/bin/macosx/tools/

## - gfortran6.1 from https://cran.r-project.org/bin/macosx/tools/

## 

## For Windows users, please install [Rtools from CRAN](https://cran.r-project.org/bin/windows/Rtools/) (Please install the version according to your R version).

## 

## After you install all the above source-building tools, you can now install the package `tidyverse` from source. Please install the package from the **source**. This step is **very important** because some of the dependent packages require you to do so.

## 

## However, for the other packages, I would still recommend you to install the packages in a normal way, i.e., installing NOT from source, but from the compiled version on CRAN.


knitr::include_graphics("images/Rstudio_utf8.png")

## ?log
## ?read.table

knitr::include_graphics("images/Rstudio_help.png")

knitr::include_graphics("images/help.png")

knitr::include_graphics("images/panic.jpg")

## Make yourself familiar with the `iris` data set, which is included in R.

## 


knitr::include_graphics("images/iris-sepal-petal.jpg")

## Use `?` to make youself familiar with the following commands: `str`,`summary`, `dim`, `colnames`, `names`, `nrow`, `ncol`, `head`, and `tail`.

## 

## What information can you get with all these commands?


#(b)
myfac <- function(x){
  if(x==0){
    return(1)
  } else {
    return(x*myfac(x-1))
  }
}

myfac <- function(x){
  ifelse(!is.numeric(x), "X has to be a number!", factorial(x))
}

##(i)
myfac(5)
##(ii)
myfac(12)
##(iii)
myfac(0)
