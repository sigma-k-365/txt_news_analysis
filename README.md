# About this project
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

# Analysis
By counting the total occarance of each word, Wordcloud2 shows the following.
[source](https://github.com/sigma-k-365/txt_news_analysis/blob/main/scripts/wordcloud2.r)
![first_word_cloud](https://github.com/sigma-k-365/txt_news_analysis/blob/main/data/ref/first_wordcloud.png)

## Scenario 1: Using tokenization 
### 1-1: Tokenization to words 
The number of news transribed by the author is as follows.
[source](https://github.com/sigma-k-365/txt_news_analysis/blob/main/scripts/01/group_by_month.r)
![trump_ratio](https://github.com/sigma-k-365/txt_news_analysis/blob/main/data/ref/num_news_per_month.png)
The ratio of news mentioning name "Trump" to the total is as follows.
![num_news_per_month](https://github.com/sigma-k-365/txt_news_analysis/blob/main/data/ref/trump_ratio.png)

### 1-2: Tokenization to N-grams (sequence of words with length n) 
The number of occurances of 2-grams of ZDF Express Feb.2024 to Mai.2025
[source](https://github.com/sigma-k-365/txt_news_analysis/blob/main/scripts/01/n_grams.r)
|bigram                          |  n|
|:-------------------------------|--:|
|us präsident                   | 85|
|präsident trump                | 64|
|ums leben                       | 47|
|präsident biden                | 45|
|bundeskanzler scholz            | 36|
|präsident selenskyj            | 28|
|milliarden euro                 | 22|
|leben gekommen                  | 21|
|ukrainische präsident          | 19|
|gewerkschaft verdi              | 17|
|präsident macron               | 15|
|präsident putin                | 15|

The number of occurances of 3-grams of ZDF Express Feb.2024 to Mai.2025
|bigram                           |  n|
|:--------------------------------|--:|
|us präsident trump              | 48|
|us präsident biden              | 33|
|ums leben gekommen               | 21|
|ukrainische präsident selenskyj | 18|
|cdu chef merz                    | 12|


