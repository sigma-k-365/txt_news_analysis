# unzip .txt files to the destination
zip_path <- ""
unzip(zip_path, exdir = data_raw_path)

# read all .txt files in the directory and get list of (file name, text)
load(paste(data_processed_path, "\\df_txt_date_news.rdata", sep=""))

# count rows per month
count_by_month <- df_txt_date_news %>% 
group_by(rounded_by_month = lubridate::floor_date(date, 'month')) %>%
summarize(count = n())
ggplot(count_by_month, aes(x=rounded_by_month, y=count)) + geom_line() + geom_point(color = "red") + scale_x_date(limits = as.Date(c("2024-01-01", "2025-06-01")), date_breaks = "month", date_labels = "%m %Y")

# tokenize all (no distinction within the date)
filtered_token <- data_processed_path %>% 
unnest_tokens(output = word, input = text) %>% 
filter(! word %in% stopwords("german"))

