# install first plyr for lapply
install.packages("plyr")
library("plyr")

# add necessary packages
packages <- c(
    "readtext",
    "stringr",
    "testthat"
)
#lapply(packages, install.packages, character.only = TRUE)
lapply(packages, library, character.only = TRUE)
