#### Programming Assignment 1: Air Pollution ####
#recomended treads
#https://class.coursera.org/rprog-003/forum/thread?thread_id=528
#https://class.coursera.org/rprog-003/forum/thread?thread_id=607
#https://class.coursera.org/rprog-003/forum/thread?thread_id=655

dataset_url1 <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
download.file(dataset_url1, "specdata.zip")
specdata <- unzip("specdata.zip", exdir = "specdata")

####Set wd to R working Directory
#specdata1 <- unzip("specdata.zip")
#list.files("specdata/specdata")

#list.files(path = '~/specdata')
#read.csv("specdata/001.csv")

#files1 <- list.files("specdata/specdata", full.names = TRUE)
#files2 <- dir("specdata/specdata")
#head(files2)



#example(mean)
## Notes
# Maybe I should use 20:1 rather than 1:20.
# this may stop the warning, longer object length is not a multiple of shorter object length

debug(pollutantmean)

pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064
pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706
pollutantmean("specdata", "nitrate", 23)
## [1] 1.281

