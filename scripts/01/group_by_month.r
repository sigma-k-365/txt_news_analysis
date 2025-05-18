# read all .txt files in the directory and get list of (file name, text)
load(paste(data_processed_path, "\\df_txt_date_news.rdata", sep=""))

# count number of news per month
count_by_month <- df_txt_date_news %>% 
    group_by(rounded_by_month = lubridate::floor_date(date, 'month')) %>%
    summarize(count = n())
ggplot(count_by_month, aes(x=rounded_by_month, y=count)) + geom_line() + geom_point(color = "red") + scale_x_date(limits = as.Date(c("2024-01-01", "2025-06-01")), date_breaks = "month", date_labels = "%m %Y")

# count numer of news about Trump per month
count_trump_by_month <- df_txt_date_news %>% 
    filter(grepl("Trump", news) ) %>%
    group_by(rounded_by_month = lubridate::floor_date(date, 'month')) %>%
    summarize(trump_count = n())
ggplot(count_trump_by_month, aes(x=rounded_by_month, y=trump_count)) + geom_line() + geom_point(color = "red") + scale_x_date(limits = as.Date(c("2024-01-01", "2025-06-01")), date_breaks = "month", date_labels = "%m %Y")

# join two tables
join <- join(x=count_by_month, y=count_trump_by_month, by = "rounded_by_month") %>% mutate(trump_ratio= trump_count/count ) 
ggplot(join, aes(x=rounded_by_month, y=trump_ratio)) + geom_line() + geom_point(color = "red") + scale_x_date(limits = as.Date(c("2024-01-01", "2025-06-01")), date_breaks = "month", date_labels = "%m %Y")
