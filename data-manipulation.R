library(dplyr)
library(tidyr)
library(ggplot2)











library(readr)
student <- read_csv("demo_data/data-students-performance.csv")
student

summary(student)

str(student)

rename(student, 
       race = `race/ethnicity`,
       parent_edu = `parental level of education`,
       prep_course = `test preparation course`,
       math = `math score`,
       reading = `reading score`,
       writing = `writing score`) -> student1
student1

## method1
sum(c(1:10))

## method2
c(1:10) %>% sum()

sqrt(sum(abs(c(-10:10))))

source_data <- c(-10:10) # create a vector

source_data %>%
  abs() %>%       # take each element's absolute value
  sum() %>%       # sum all elements
  sqrt()          # take the square root of the sum

student %>%
  rename(
    race = `race/ethnicity`,
    parent_edu = `parental level of education`,
    prep_course = `test preparation course`,
    math = `math score`,
    reading = `reading score`,
    writing = `writing score`
  ) -> student1a
student1a

c(-10:10) |>   # create a vector
  abs() |>      # take each element's absolute value
  sum() |>       # sum all elements
  sqrt()   

student1 %>%
  mutate(final_grade = math * 0.5 + reading * 0.25 + writing * 0.25)

student1 %>%
  mutate(language = reading*0.5 + writing*0.5, ## new var 1
         final_grade = math + language) ## new var 2

student1 %>%
  select(math)

student1 %>%
  select(math, reading, writing)

student1 %>%
  select(reading, writing, math)

student1 %>%
  select(math:writing)

student1 %>% 
  select(-c(race:lunch))

student1 %>% 
  select(starts_with(c("l","m")))

student1 %>%
  select(contains("_"))

student1 %>%
  select(ends_with("ing"))

student1 %>%
  select(one_of("gender", "race", "parent_edu"))

student1 %>%
  filter(math > 90)

student1 %>%
  filter(math < 40 & reading < 40)

student1 %>%
  filter(math < 40 | reading < 40)

student1 %>%
  filter(xor(math < 40, reading < 40))





student1 %>% 
  arrange(math)

student1 %>%
  arrange(desc(math))

student1 %>%
  group_by(gender) %>%
  summarize(math_average = mean(math),
            math_median = median(math),
            math_sd = sd(math))



student1 %>%
  group_by(gender) %>%
  summarize(N=n(), 
            RANK90TH=quantile(math, 0.9),
            RANK10TH=quantile(math, 0.1))



student1 %>%
  count(parent_edu, gender)





library(dplyr)

my_data <- data.frame(
  id = 1:10,
  name = c("Alice", "Bob", "Charlie", "Dave", "Eve", "Frank", "Grace", "Heidi", "Isaac", "Judy"),
  gender = c("F", "M", NA, "M", "F", "M", "F", "F", "M", "F"),
  age = c(25, 35, 45, 20, 60, 55, 40, 50, 30, 70),
  income = c(50000, 75000, 100000, 40000, 80000, 90000, 70000, 85000, 60000, 95000),
  education = c("high school", "college", "master", "high school", "college", "college", "master", "PhD", "college", "PhD"),
  occupation = c("teacher", "engineer", "manager", "sales", "analyst", "doctor", "teacher", "manager", "analyst", "doctor")
)
# Your code here





scores <- data.frame(
  student_id = factor(rep(1:5, each = 3)),
  subject = rep(c("math", "english", "science"), 5),
  score = sample(60:100, size = 15, replace = TRUE)
)

scores

scores_wide <- scores %>% 
  pivot_wider(
    names_from = subject,
    values_from = score,
    values_fill = 0
  )

scores_wide

scores_wide %>%
  mutate(gpa = math*0.3 + english*0.4 + science*0.3) %>%
  ggplot(aes(student_id, gpa, fill=student_id)) +
    geom_col() +
    labs(x = "Student ID", y = "GPA Scores", fill = "Student ID") +
  scale_fill_grey() +
  theme_bw()

data <- data.frame(
  subject_id = c(1, 2, 3, 4),
  pre_treatment_bp = c(120, 130, 125, 118),
  post_treatment_bp = c(115, 127, 120, 112)
)

data

data_long <- data %>% 
  pivot_longer(
    cols = c("pre_treatment_bp", "post_treatment_bp"),
    names_to = "time_point",
    values_to = "bp_measurement"
  )

data_long

## Easier to plot boxplots
## for each time point
data_long %>%
  ggplot(aes(time_point, bp_measurement, fill = time_point)) +
  geom_boxplot()



my_data <- data.frame(
  id = c(1, 2, 3, 4, 5),
  day_1_value = c(23, 25, 20, 21, 24),
  day_2_value = c(27, 29, 30, 28, 26),
  day_3_value = c(18, 19, 22, 20, 21)
)
my_data



















require(readr)
word_freq <- read_csv("demo_data/data-word-freq.csv")
word_freq
