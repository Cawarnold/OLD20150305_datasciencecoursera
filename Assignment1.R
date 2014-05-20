#### Programming Assignment 1: Air Pollution ####

dataset_url1 <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
download.file(dataset_url1, "specdata.zip")
specdata <- unzip("specdata.zip", exdir = "specdata")
specdata1 <- unzip("specdata.zip")
#list.files("specdata/specdata")


files1 <- list.files("specdata/specdata", full.names = TRUE)
files2 <- dir("specdata/specdata")
head(files2)

pollutantmean <- function(directory, pollutant, id = 1:332) {
  files <- list.files(directory, full.names = TRUE)  ## creates a list of files
  dat <- data.frame()  #creates an empty data frame
  for (i in id) {
    dat <- rbind(dat, read.csv(files[i]))
  }
  dat_subset <- dat[dat[, "ID"] == id, ]
  meanOfPollutant <- mean(dat_subset$pollutant, na.rm = TRUE)
  meanOfPollutant
}




