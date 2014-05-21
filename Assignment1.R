#### Programming Assignment 1: Air Pollution ####
#recomended treads
#https://class.coursera.org/rprog-003/forum/thread?thread_id=528
#https://class.coursera.org/rprog-003/forum/thread?thread_id=607
#https://class.coursera.org/rprog-003/forum/thread?thread_id=655

dataset_url1 <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
download.file(dataset_url1, "specdata.zip")
specdata <- unzip("specdata.zip", exdir = "specdata")
#specdata1 <- unzip("specdata.zip")
#list.files("specdata/specdata")

list.files(path = '~/specdata')

#files1 <- list.files("specdata/specdata", full.names = TRUE)
#files2 <- dir("specdata/specdata")
#head(files2)

pollutantmean <- function(directory, pollutant, id = 1:332) {
  files <- list.files("specdata/"directory, full.names = TRUE)  ## creates a list of files
  dat <- data.frame()  #creates an empty data frame
  for (i in id) {
    dat <- rbind(dat, read.csv(files[i]))
  }
  dat_subset <- dat[dat[, "ID"] == id, ]
  meanOfPollutant <- mean(dat_subset$pollutant, na.rm = TRUE)
  meanOfPollutant
}

#sexample(mean)
## Notes
# Maybe I should use 20:1 rather than 1:20.
# this may stop the warning, longer object length is not a multiple of shorter object length


pollutantmean("specdata", "sulfate", id = 1:10)

