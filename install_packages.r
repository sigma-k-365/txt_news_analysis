# install first plyr for lapply
if(!require(plyr)) install.packages("plyr")
library("plyr")

# add necessary packages
packages <- c(
    "readtext",
    "stringr",
    "testthat",
    "tidytext",
    "tidyverse",
    "tm",
    "wordcloud",
    "wordcloud2"
)
#lapply(packages, install.packages, character.only = TRUE)
lapply(packages, library, character.only = TRUE)
