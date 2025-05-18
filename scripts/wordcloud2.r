# use wordcloud2 with more options
# ref: https://cran.r-project.org/web/packages/wordcloud2/vignettes/wordcloud.html#lettercloud-function
text <- Corpus(DirSource(paste(data_raw_path,"\\",sep="")))
text <- clean_corpus_german(text)

# convert to data.frame with columns "word" and "frequency"
df_Term_Freq <- data.frame(get_freq_terms(text))

# square with gray background
wordcloud2(df_Term_Freq, color = "random-light", backgroundColor = "grey", shape="star")
# rotation
wordcloud2(df_Term_Freq, minRotation = -pi/6, maxRotation = -pi/6, minSize = 10,
  rotateRatio = 1)

# somehow does not work (known bug?)
# https://github.com/Lchiffon/wordcloud2/issues/12
ref_path <- paste(project_folder_path, "\\data\\ref", sep="")
zdf_logo_path <- paste(ref_path, "\\ZDF_Logo_BW.png", sep="")
figPath = system.file(zdf_logo_path, package = "wordcloud2")
# wordcloud2(df_Term_Freq, figPath = figPath, size = 1.5, color = "orange")
# letterCloud(df_Term_Freq, word = "Z", size = 2)
# letterCloud(df_Term_Freq, word = "ZDF", wordSize = 1)
# letterCloud(df_Term_Freq, word = "ZDF", wordSize = 1, color = "random-light", backgroundColor = "grey")