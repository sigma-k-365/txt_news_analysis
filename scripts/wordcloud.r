# create word cloud utilizing tm and wordcloud
# dependency: tm, wordcould
# reference 
# https://www.youtube.com/watch?v=ZEizkxzrglE

text <- Corpus(DirSource(paste(data_raw_path,"\\",sep="")))

# transformations
crean_corpus_german(text)

meta(text[[1]])
inspect(text[[1]])

# wordcloud
wordcloud(
    text,
    scale=c(3,0.5),
    max.words=20,
    random.order=FALSE,
    use.r.layout=TRUE,
    colors=brewer.pal(8,"Spectral")
    )