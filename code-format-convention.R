x1 <- "This is a sentence." ## recommended
x2 = "This is a sentence." ## not recommended
x1
x2

# ====================
# Variable Assignment
# ====================
x <- "This is a sentence"

# ====================
# Variable Printing
# ====================
x

## # Recommended
## x <- c(1:10)
## tidyr::separate()
## 
## 
## # NOT Recommended
## x <- c(1 : 10)
## tidyr :: separate()

# for-loop
for (i in 1:10) {
  print(i)
}

# if-conditional
x <- 2
if (x == 1) {
  print("The answer is 1!")
} else {
  print("The answer is greater than 1!")
}

## mean(x)
## ggplot(aes(x = money, y = achievement))

## Embeded Control Structures
for (i in 1:10) {
  if (i < 5) {
    print(i)
  } else {
    print(i + 10)
  } #endif
} #endfor

long_function_name <- function(a = "a long argument",
                               b = "another argument",
                               c = "another long argument") {
  # As usual code is indented by two spaces.
}

y <- matrix(data = c(2, 5, 7, 8), # data source
            nrow = 2, # two rows
            byrow = TRUE) # filling values by row
y
