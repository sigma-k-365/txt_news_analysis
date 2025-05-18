# About
This R program analyses the news transcripts of heute Express broadcasted from Feb2024 to May2025 at the follwing site.
https://www.zdf.de/magazine/heute-xpress-movie-100

## Environment 
R 4.5.0; R Extension for Visual Studio Code 2.8.5

## Input
[example](https://github.com/sigma-k-365/txt_news_analysis/blob/main/data/raw/01.02.25.txt)
- Txt files put in data/raw/
- file name format : DD.MM.YY.txt.
- Each news is separated by 2 carriage returns: \n\n

## Notes on structure
- List necesary packages in install.packages.
- Execute codes of "00_initialize" to install and attach all necessary packages and load functions defined in R folder.
- Put all tests of functions in "test" folder, that will be executed by the initialization as well.
- "01" converts all text file into data.frame; doc_id=file name, date, text=news script, order=order within the file.
- Scripts dependent on the result of "01" will be placed in scripts/01/ etc.

## Analysis
By counting the total occarance of each word, Wordcloud2 shows the following.
[source](https://github.com/sigma-k-365/txt_news_analysis/blob/main/scripts/wordcloud2.r)
![first_word_cloud](https://github.com/sigma-k-365/txt_news_analysis/blob/main/data/ref/first_wordcloud.png)
The number of news transribed by the author is as follows.
[source](https://github.com/sigma-k-365/txt_news_analysis/blob/main/scripts/01/group_by_month.r)
![trump_ratio](https://github.com/sigma-k-365/txt_news_analysis/blob/main/data/ref/num_news_per_month.png)
The ratio of news mentioning name "Trump" to the total is as follows.
![num_news_per_month](https://github.com/sigma-k-365/txt_news_analysis/blob/main/data/ref/trump_ratio.png)
