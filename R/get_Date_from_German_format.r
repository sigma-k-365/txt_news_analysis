# take string in "DD.MM.YY..." format as argument and return Date
get_Date_from_German_format <- function(datum_monat_jahr){
    tryCatch({
        # DD
        datum <- str_sub(datum_monat_jahr, start=1, end=2)
        # DD.MM
        monat <- str_sub(datum_monat_jahr, start=4, end=5)
        # year as 20YY taken from DD.MM.YY
        jahr <- paste("20", str_sub(datum_monat_jahr, start=7, end=8),sep="")
        # return as Date converted from string "20YY-MM-DD"
        as.Date(paste(jahr, monat, datum, sep = "-"))
        },
        error = function(cond){
            message(sprintf("Error while converting %s to date format!", datum_monat_jahr))
            message(conditionMessage(cond))
        },
            warning = function(cond) {
            message(paste("URL caused a warning:", url))
            message("Here's the original warning message:")
            message(conditionMessage(cond))
            # Choose a return value in case of warning
            NULL
        },
        finally = {
        }
    )
}
