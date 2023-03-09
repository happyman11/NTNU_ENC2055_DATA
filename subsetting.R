char.vec <- c("one", "two", "three","four", "five")
char.vec[1]

## method 1
which.to.extract <- c(1, 4)
char.vec[which.to.extract]

## method 2
char.vec[c(1, 4)]

## method 1
whether.to.extract <- c(TRUE, FALSE, TRUE, FALSE, FALSE)
char.vec[whether.to.extract]

## method 2
char.vec[c(T, F, T, F, F)]

char.vec[-2]

char.vec

## Alternative (a)
char.vec.short <- char.vec[-2]
char.vec.short
char.vec

## Alternative (b)
char.vec <- char.vec[-2]
char.vec

x <- c(3, 7, 2, 9, 6, 1)
indices <- which(x > 5)

## method 1
x[indices]
## method 2
x[which(x > 5)]

num.vec <- c(1:20)
num.vec > 10
num.vec[num.vec > 10]
num.vec[num.vec != 10]

num.vec[num.vec > 18 | num.vec < 2]



char.vec <- c("one", "two", "three", "four", "five")
char.vec[target.indices]



## random sample integers
num.vec
## conditional subsetting
num.vec[target.indices]

# Example vector
vec <- c(7, 1, 5, 3, 9)

# Using sort()
sort(vec)

# Using order()
order(vec)
vec[order(vec)]











sbj_gender_num <- c(1, 0, 0, 1, 1, 0, 1)
sbj_gender_num
sbj_gender_num_fac <- factor(x = sbj_gender_num)
sbj_gender_num_fac

sbj_gender_char <- c("female","male","male","female","female","male","female")
sbj_gender_char
sbj_gender_char_fac <- factor(x = sbj_gender_char)
sbj_gender_char_fac

levels(sbj_gender_num_fac)
levels(sbj_gender_char_fac)

sbj_prof_num<- c(1, 2, 4, 4, 2, 3, 3, 1, 1)
sbj_prof_num

sbj_prof_fac <- factor(
  x = sbj_prof_num,
  levels = c(1:4),
  labels = c("beginner", "low-inter", "upper-inter", "advanced")
)
sbj_prof_fac

sbj_prof_num

sbj_prof_fac_ordered <- factor(
  x = sbj_prof_num,
  levels = c(1:4),
  labels = c("beginner", "low-inter", "upper-inter", "advanced"),
  ordered = T
)
sbj_prof_fac_ordered

sbj_prof_fac_ordered[1]
sbj_prof_fac_ordered[4]
sbj_prof_fac_ordered[1] < sbj_prof_fac_ordered[4]

sbj_prof_fac[1]
sbj_prof_fac[4]
sbj_prof_fac[1] < sbj_prof_fac[4]

# A list consists of 
# (i) numeric vector, 
# (ii) character vector, 
# (iii) Boolean vector
list.example <- list(
  "one" = c(1, 2, 3),
  "two" = c("Joe", "Mary", "John", "Angela"),
  "three" = c(TRUE, TRUE)
)

list.example

list.example[1]
list.example[[1]]
list.example[["one"]]

## ind <- c("one", "three")
## list.example[ind]
## list.example[[ind]]









ex_df <- data.frame(
  WORD = c("the", "boy", "you","him"),
  POS = c("ART","N","PRO","PRO"),
  FREQ = c(1104,35, 104, 34)
)
ex_df

ex_df[1, ]
ex_df[c(1, 3), ]

ex_df[, 1]
ex_df[, c(1, 3)]

ex_df[, c("WORD", "FREQ")]

ex_df[, c("FREQ")]
ex_df[, c("FREQ"), drop = FALSE]















require(tibble)
ex_tb <- tibble(
  WORD = c("the", "boy", "you","him"),
  POS = c("ART","N","PRO","PRO"),
  FREQ = c(1104,35, 104, 34))
ex_tb

ex_tb_2 <- tribble(
  ~WORD, ~POS,  ~FREQ,
  #----|--------|------
  "the", "ART", 1104,
  "boy", "N",   35,
  "you", "PRO", 104,
  "him", "PRO", 34
)
ex_tb_2

ex_tb[1,]
ex_tb[,1]
ex_tb[,c(1:3)]
