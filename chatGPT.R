## # install.packages("remotes")
## remotes::install_github("jcrodriguez1989/chatgpt")

## Sys.setenv(OPENAI_API_KEY = "your_api_key_here")

## usethis::edit_r_environ()

## OPENAI_API_KEY='your_api_key_here'

## ## Get the environment variables from the system default
## Sys.getenv("OPENAI_API_KEY")

library(chatgpt)

## If you have set up environment variable in `~/.Renviron`
## You don't have to do anything
# Sys.getenv("OPENAI_API_KEY") ## double check if the environment variable is working

## If you have not set up the environment variable,
## please specify your OPENAI_API key here
# Sys.setenv(OPENAI_API_KEY = "your_api_key_here") ## uncomment to specify API

Sys.setenv(OPENAI_MAX_TOKENS = 2048) ## max for `gpt-3.5-turbo`;  8092 tokens for `gpt-4` !!!
Sys.setenv(OPENAI_VERBOSE = FALSE)



writeLines(
  ask_chatgpt(
    "You are a professional R instructor. Can you give me a few specific suggestions on how to start learning the R programming language?"
  ) ## endask
) ## endwrite

writeLines(
  ask_chatgpt(
    "Could you explain what technical skills a data scientist needs for their career?"
    ) ## endask
  ) ## endwrite

writeLines(
  ask_chatgpt(
    "Can you tell us which programming language is better, Python or R?"
    ) ## endask
  ) ## endwrite

writeLines(
  ask_chatgpt(
    "As a humanities student, I'm more comfortable with Shakespeare than with Python. Can you explain why I need to learn programming, besides the fact that it pays better than reciting sonnets on the street corner?"
    ) ## endask
  ) ## endwrite

writeLines(
  ask_chatgpt(
    "How do you convince humanities students who would rather run a marathon in stilettos than sit through a statistics class that the subject is actually important and could make a significant impact on their career trajectory?"
    ) ## endask
  ) ## endwrite

writeLines(
  comment_code(
    "for (i in 1:10) {\n  print(i ** 2)\n}"
    ) ## endcomment
  ) ## endwrite

writeLines(
  explain_code(
    "for (i in 1:10) {\n  print(i ** 2)\n}"
    ) ## endexplain
  ) ## endwrite

writeLines(
  explain_code(
    "corp %>%
    mutate(NumOfChars = nchar(texts),
           VowelPer = str_count(texts,'[aeiou]')/NumOfChars,
           ConPer = str_count(texts,'[^aeiou]')/NumOfChars) %>%
    pivot_longer(c('VowelPer', 'ConPer'), names_to = 'Segment',values_to = 'Percent') %>%
    ggplot(aes(Segment, Percent, fill=Segment)) + geom_boxplot(notch=TRUE)"
  ) ## endexplain
) ## endwrite

writeLines(
  document_code(
    "squarenum <- function(x){x^2}"
    ) ## enddoc
  ) ## endwrite

#' Squares a Number
#' 
#' This function takes a number as an argument and returns the square of that number.
#' 
#' @param x A number.
#' 
#' @return The square of the number `x`.
#' 
#' @examples
#' squarenum(4)
#' 
#' @export
#'
squarenum <- function(x){
  x^2
}

writeLines(
  find_issues_in_code(
    "x <- data.frame(index = c(1:4), text = letters[1:4])
writeLines(x[1])"
  ) ## endfind
) ## endwrite

writeLines(optimize_code(
  "x <- data.frame(index = c(1:4), text = letters[1:4])
  writeLines(x[1])"
))

writeLines(refactor_code(
  "x <- data.frame(index = c(1:4), text = letters[1:4])
writeLines(x[1])"
))

text_zh <- "記者蘇志畬／台中即時報導
2023年3月8日 週三 下午12:52世界棒球經典賽今晚7點上演中華隊對上巴拿馬隊，開幕戰票房2萬人完售，滿場應援是助力也是壓力，前職棒球星曹竣崵指出，中華隊投打守正常發揮的話，有機會贏球，「關鍵在心理，要扛住想贏、必須贏的壓力」。

「不只現場2萬人，全台2300萬人透過電視收看的人可能更多。」球評、現任台北城市科技大學棒球隊總教練的曹竣崵表示：「在有壓力的情況下打球，要能夠頂得住。」"

writeLines(ask_chatgpt(
  paste0(
    "Can you identify all noun phrases from the following Chinese text:\"",
    text_zh,
    "\""
  )
))

writeLines(ask_chatgpt(
  paste0(
    "Can you perform Chinese word segmentation on the following Chinese text (using whitespaces as the word delimiters):\"",
    text_zh,
    "\""
  )
))

writeLines(ask_chatgpt(
  paste0(
    "Can you translate the following Chinese text into English:\"",
    text_zh,
    "\""
  )
))

writeLines(ask_chatgpt(
  paste0(
    "Can you summarize the following Chinese text in one sentence:\"",
    text_zh,
    "\""
  )
))
