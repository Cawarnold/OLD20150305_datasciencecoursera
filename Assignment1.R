#### Programming Assignment 1: Air Pollution ####
#recomended treads
#https://class.coursera.org/rprog-003/forum/thread?thread_id=528
#https://class.coursera.org/rprog-003/forum/thread?thread_id=607
#https://class.coursera.org/rprog-003/forum/thread?thread_id=655

#dataset_url1 <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
#download.file(dataset_url1, "specdata.zip")
#specdata <- unzip("specdata.zip", exdir = "specdata")
#list.files("specdata/specdata")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  files <- list.files(paste("specdata/",directory, sep=""), full.names = TRUE)## creates a list of files
  cat(files)
  dat <- data.frame()  #creates an empty data frame
  for (i in id) {
    dat <- rbind(dat, read.csv(files[i]))
  }
  print("Sausage")
  print(head(dat))
  print("and")
  dat2 <- dat[dat$ID == id, c("Date", "sulfate",	"nitrate", "ID")]
  print(head(dat2))
  subset1 <- subset(dat, dat$ID == id , select = pollutant)
  subset2 <- subset(dat2, dat2$ID == id , select = pollutant)
  print("bun")
  print(head(subset1))
  mean1 <- mean(complete.cases(subset1))
  mean2 <- mean(complete.cases(subset2))
  print(mean1)
  print(mean2)
  print("!")
  #dat_subset <- dat[dat[, "ID"] == id, pollutant]
  #print(head(dat_subset))
  #dat_subset1 <- complete.cases(dat_subset)
  #meanOfPollutant <- mean(dat_subset$pollutant, na.rm = TRUE)
  #print(meanOfPollutant)
}

getwd()

pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064
pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706
pollutantmean("specdata", "nitrate", 23)
## [1] 1.281