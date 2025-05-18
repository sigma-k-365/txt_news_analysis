# unzip .txt files to the destination
zip_path <- ""
unzip(zip_path, exdir = data_raw_path)

# read all .txt files in the directory and get data.frame of (file name, date, news)
df_txt_date_news <- 
readtext(paste(data_raw_path, "\\*.txt", sep = "")) %>%
ddply(
    .(doc_id), 
    summarize, 
    date = get_Date_from_German_format(doc_id), 
    news = strsplit(text, split="\n\n")) %>% 
    unnest(news)

# save and release from the memory
save(df_txt_date_news, file = paste(data_processed_path, "\\df_txt_date_news.rdata", sep=""))
rm(df_txt_date_news)

