# take string in "DD.MM.YY..." format as argument and return Date
get_Date_from_German_format <- function(datum_monat_jahr)
{
    # DD
    datum <- str_sub(datum_monat_jahr, start=1, end=2)
    # DD.MM
    monat <- str_sub(datum_monat_jahr, start=4, end=5)
    # year as 20YY taken from DD.MM.YY
    jahr <- paste("20", str_sub(datum_monat_jahr, start=7, end=8),sep="")
    # return as Date converted from string "20YY-MM-DD"
    as.Date(paste(jahr, monat, datum, sep = "-"))
}

# arg: ("doc_id", "text") 
# return: list ("file name", 20YY-MM-DD, list of news)
get_News_list_from_txt <- function(doc_id, text)
{
    # remove extension
    file_name <- tools::file_path_sans_ext(doc_id)
    # split the text into a list by double carriage return
    list(file_name, get_Date_from_German_format(file_name),strsplit(text, split="\n\n"))
}
