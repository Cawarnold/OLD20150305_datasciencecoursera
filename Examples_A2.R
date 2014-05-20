## Assigment 2

#2-Factor Authentication
#When add, commit, push to github.
#use gui to open a shell and view the changes

#### Part 1 ####

dataset_url1 <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
download.file(dataset_url1, "specdata.zip")
specdata <- unzip("specdata.zip", exdir = "specdata")
list.files("specdata/specdata")

#### Practice ####

f001 <- read.csv("specdata/specdata/001.csv")
dim(f001)
f001[1,"nitrate"]
f001[332, "nitrate"]
f001[f001$Date == "2005-07-15", "nitrate"]
f001[f001[, "Date"] == "2005-07-15", "sulfate"]

files <- list.files("specdata/specdata", full.names = TRUE)
files

head(read.csv(files[50]))
bind2tables <- rbind(read.csv(files[1]), read.csv(files[2]))
head(bind2tables)
tail(bind2tables)

date_2003 <- subset(bind2tables, bind2tables$Date == "2003-10-06")
date_2003

for (i in 1:5) {
  print(i)
}


dat <- data.frame()
# rm(dat) - to remove dat from workspace
for (i in 1:30) {
  dat <- rbind(dat, read.csv(files[i]))
}

tail(dat)
dim(dat)
median(dat$sulfate, na.rm = T)
mean(dat$sulfate, na.rm = T)
dat[dat[, "ID"] == 1:100, ] 
mean(dat[dat$ID == 1:2, "nitrate"], na.rm = TRUE)
mean(dat[dat[, "ID"] == 2:3, "sulfate"], ne.rm)

#### Trial1 ####

pollutantmean1 <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
  files <- dir("specdata/"directory, full.names = TRUE)  ## creates a list of files
  dat <- data.frame()  #creates an empty data frame
    ## rm(dat) - to remove dat from workspace
  for (i in 1:332) {
    ## loops through the files, rbinding them together
    dat <- rbind(dat, read.csv(files[i]))
  }
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
  meanOfPollutant <- mean(dat_subset$pollutant, na.rm = T)
  
  
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
  dat_subset <- dat[dat[, "ID"] == id, ] 
  
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
  meanOfPollutant
}

print("specdata/"directory)

#### Trial2 ####

pollutantmean2 <- function(directory, pollutant, id = 1:332) {
  files <- dir("specdata/"directory, full.names = TRUE)  ## creates a list of files
  dat <- data.frame()  #creates an empty data frame
  for (i in 1:332) {
    dat <- rbind(dat, read.csv(files[i]))
  }
  print(dim(dat))
  dat_subset <- dat[dat[, "ID"] == id, ]
  meanOfPollutant <- mean(dat_subset$pollutant, na.rm = TRUE)
  meanOfPollutant
}

print(dim(dat))
mean(dat[dat[, "ID"] == 70:72, ]$"nitrate", na.rm = TRUE)
dat[dat[, "ID"] == 1:3, ]

pollutantmean(directory, pollutant, id(range))

pollutantmean2("specdata", "sulfate", id = 1:10)

#### Trial3 ####
files <- dir("specdata/specdata", full.names = TRUE) 


dat <- data.frame()
for (i in 68:74) {
  dat <- rbind(dat, read.csv(files[i]))
}


mean(dat[dat[, "ID"] == 70:72, ]$"nitrate", na.rm = TRUE)


#### Test pollutantmean2 ####

pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064
pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706
pollutantmean1("specdata", "nitrate", 23)
## [1] 1.281


pollutantmean3 <- function(directory, pollutant, id = 1:332) {
  files <- dir(directory, full.names = TRUE)
  print(files)
}

pollutantmean3("specdata", "nitrate", 23)


#### Part 2 ####

complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  sum(complete.cases(data)
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}

complete <- function(directory, id = 1:332) {
  files <- dir("specdata/"directory, full.names = TRUE)  ## creates a list of files
  dat <- data.frame()  #creates an empty data frame
  for (i in 1:332) {
    dat <- rbind(dat, read.csv(files[i]))
  }
  dat_subset <- dat[dat[, "ID"] == id, ]
  nobs <- complete.cases()
  return(id, nobs)
}

for (i in id){
  dat<- rbind(dat, read.csv(files_full[i]))
  ns <- sum(complete.cases(dat))
  dat <- data.frame()
  final_obs <- c(final_obs, ns)
}
df<- data.frame(id, final_obs)  
return(df)
}  


#### Part 3 ####

filename <- paste(directory,'\\',idvect[x],".csv",sep="")
file <- data.frame(read.csv(filename,T))
cleaner <- file[,2:3]
cc <- complete.cases(cleaner)
nobs<- sum(cc)

if(nobs > threshold){
  filecom <- data.frame(rbind(file,filecom))
  nitrate <- filecom[3]
  sulfate <- filecom[2]
  ok <- rbind(cor(nitrate,sulfate),ok)

  
  

  

#### Test pollutantmean ####
  
pollutantmean("specdata", "sulfate", 1:2)
## [1] 4.064
pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706
pollutantmean("specdata/specdata", "nitrate", 23)
## [1] 1.281
  
  
  
  

####################################################
dataset_url <- "http://dl.dropboxusercontent.com/u/8036886/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")

#####################################################

##
## Implements a set of functions that implement a set of funtions
##  that create a cacheable matrix [makeCacheMatrix()] and a 
##  function to solve for the inverse of that matrix and save it 
##  in the cache. Returning this cached value if called again.

##
## Create a cached matrix that includes functions to get a 
##  previously calculated inverse and a function to calculate
##  the inverse of the matrix and save that value in the cache.
##
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## This function checks if cached value exists for the matrix 
##  and returns it if present. If not, it calculates and saves
##  it in the cache.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}