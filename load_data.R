
  #set the working directory
  setwd("~/Coursera/data science JHU/Exploratory data analysis/Electric_power_consumption")
  
  #read the data 
  pwc <- read.table("household_power_consumption.txt",na="?", header=TRUE, sep=";", colClasses =c(rep("character",2),rep("numeric",7)))
  
  #remove missing values
  pwc <- pwc[complete.cases(pwc),] 
  
  #Convert date and time 
  pwc$date_time <- strptime(paste(pwc$Date,pwc$Time), "%d/%m/%Y %H:%M:%S")
  
  #store the data from the dates 1/2/2007 and 2/2/2007
  pwc<- subset(pwc, pwc$Date == "1/2/2007" | pwc$Date == "2/2/2007")
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
