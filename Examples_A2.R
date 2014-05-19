## Assigment 2

#2-Factor Authentication
#When add, commit, push to github.
#use gui to open a shell and view the changes

##Part 1

dataset_url <- "http://dl.dropboxusercontent.com/u/8036886/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")


dataset_url1 <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
download.file(dataset_url1, "specdata.zip")
unzip("specdata.zip", exdir = "specdata")

list.files("spec_data")

andy <- read.csv("diet_data/Andy.csv")

R.version.string

pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}

C:\Users\Christian\Desktop\Christian\R\RProgramming\rprog-data-specdata.zip\

pollutantmean(directory, pollutant, id(range))

pollutantmean(C:\Users\Christian\Desktop\Christian\R\RProgramming\rprog-data-specdata.zip\specdata)

