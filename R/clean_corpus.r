clean_corpus_german <- function(text){
    # transformations
    text <- tm_map(text, content_transformer(tolower))
    text <- tm_map(text, removeNumbers)
    text <- tm_map(text, removeWords, stopwords("german"))
    text <- tm_map(text, removePunctuation)
    tm_map(text, stripWhitespace)
}

# returns a data.frame with colums "Term", "Frequency" and "proportion of the term over the total"
# arg: cleared corpus 
get_freq_terms <- function(corpus_in){
    doc_term_mat <- TermDocumentMatrix(corpus_in)
    freq_terms <- findFreqTerms(doc_term_mat)[1:max(doc_term_mat$nrow)]
    terms_grouped <- doc_term_mat[freq_terms,] %>%
        as.matrix() %>%
        rowSums() %>%
        data.frame(Term=freq_terms, Frequency = .) %>%
        arrange(desc(Frequency)) %>%
        mutate(prop_term_to_total_terms=Frequency/nrow(.))
    (data.frame(terms_grouped))
}