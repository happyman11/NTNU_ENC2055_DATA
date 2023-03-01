library(tidyverse)
head(sentences) ## `sentences` dataset is included in `stringr`

## Prepare a data frame for analysis
corp <- data.frame(id = seq(1:length(sentences)), 
                   texts = str_to_lower(sentences))
corp

corp %>%
    mutate(NumOfChars = nchar(texts),
           VowelPer = str_count(texts,'[aeiou]')/NumOfChars,
           ConPer = str_count(texts,'[^aeiou]')/NumOfChars) %>%
    pivot_longer(c("VowelPer", "ConPer"), names_to = "Segment",values_to = "Percent") %>%
    ggplot(aes(Segment, Percent, fill=Segment)) + geom_boxplot(notch=TRUE)

