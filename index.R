library(tidyverse)
data("USArrests")
# ?USArrests ## check description of the dataset
head(USArrests)
USArrests %>% 
  pivot_longer(cols = c("Murder","Assault","UrbanPop", "Rape"),
               names_to = "ArrestTypes",
               values_to = "Rates") %>%
  ggplot(aes(ArrestTypes, Rates, fill = ArrestTypes))+
  geom_boxplot()

## data() ## check more built-in datasets

print('Hello! R!')
