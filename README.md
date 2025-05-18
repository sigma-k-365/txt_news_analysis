# About
This R program analyses the news scripts of heute Express broadcasted at the follwing site from Feb2024 to May2025.
https://www.zdf.de/magazine/heute-xpress-movie-100

## Data input
- Txt files put in data/raw/
- file name format : DD.MM.YY.txt.
- Each news is separated by 2 carriage returns: \n\n

## Notes on structure
- List necesary packages in install.packages.
- Execute codes of "00_initialize" to install and attach all necessary packages and load functions defined in R folder.
- Put all tests of functions in "test" folder, that will be executed by the initialization as well.
- 01 converts all text file into data.frame; doc_id=file name, date, text=news script, order=order within the file.
- scripts dependent on the result of 01 will be placed in scripts/01/ etc.

## Analysis
When we count the total occarance of each word, Wordcloud2 shows the following.
![first_word_cloud](https://github.com/sigma-k-365/txt_news_analysis/blob/main/data/ref/first_wordcloud.png)
