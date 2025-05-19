# read all .txt files in the directory and get list of (file name, text)
load(paste(data_processed_path, "\\df_txt_date_news.rdata", sep=""))

# collapse the lists of stopwords to a regular expression for filtering
reg_exp_stopwords <- 
    paste0("\\b", extended_stopwords_de, "\\b", collapse = "\\b|\\b") # search by word

# tokenize to 2-grams and filter
major_bi_gram <- df_txt_date_news %>%
    unnest_tokens(bigram, news, token = "ngrams", n = 2) %>%
    filter(!is.na(bigram)) %>%
    count(bigram) %>% 
    filter(n >= 10) %>% # remove minor bi-grams
    filter(! grepl('[0-9]', bigram) ) %>%           # remove bi-grams containing numbers
    filter(! grepl(reg_exp_stopwords, bigram) ) %>% # remove bi-grams containing stopwords
    arrange(desc(n))
knitr::kable(major_bi_gram, format = "markdown")

# tokenize to 3-grams and filter
major_tri_gram <- df_txt_date_news %>%
    unnest_tokens(bigram, news, token = "ngrams", n = 3) %>%
    filter(!is.na(bigram)) %>%
    count(bigram) %>% 
    filter(n >= 10) %>% # remove minor bi-grams
    filter(! grepl('[0-9]', bigram) ) %>%           # remove bi-grams containing numbers
    filter(! grepl(reg_exp_stopwords, bigram) ) %>% # remove bi-grams containing stopwords
    arrange(desc(n))
knitr::kable(major_tri_gram, format = "markdown")
