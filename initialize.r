# set folder path and install all packages
project_folder_path <- ""
data_raw_path <- paste(project_folder_path, "\\data\\raw", sep = "")
data_processed_path <- paste(project_folder_path, "\\data\\processed", sep = "")
source_path <- paste(project_folder_path, "\\R", sep = "")
output_path <- paste(project_folder_path, "\\output", sep = "")
test_path <- paste(project_folder_path, "\\test", sep = "")

# install and attach all necessary packages
source(paste(project_folder_path, "\\install_packages.r", sep = ""))

# load all source files
sources <- dir(source_path, pattern = "\\.r")
for(source in sources){
    source(paste(source_path, source, sep="\\"))
}

# run all tests
test_dir(test_path, reporter="location")


