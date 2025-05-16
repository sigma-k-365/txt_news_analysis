# unzip .txt files to the destination
zip_path <- ""
unzip(zip_path, exdir = data_raw_path)

# read all .txt files in the directory and get list of (file name, text)
text_list <- readtext(paste(data_raw_path, "\\*.txt", sep = ""))

# iterate over rows (a non-typical R code?)
temp_row <- as.integer(1)
result <- vector(mode="list", length=nrow(text_list))
while(temp_row <= nrow(text_list)){
    result[[temp_row]]<- get_News_list_from_txt(text_list[temp_row,1], text_list[temp_row,2])
    temp_row <- temp_row + 1
}
save(result, file = paste(data_processed_path, "\\txt_date_newslist.rdata", sep=""))
rm(result)

