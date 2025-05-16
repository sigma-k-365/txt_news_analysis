# install first plyr for lapply
if(!require(plyr)) install.packages("plyr")
library("plyr")

# add necessary packages
packages <- c(
    "readtext",
    "stringr",
    "testthat",
    "tm",
    "wordcloud"
)
#lapply(packages, install.packages, character.only = TRUE)
lapply(packages, library, character.only = TRUE)
