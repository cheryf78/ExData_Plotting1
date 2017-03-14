

#set the working directory
setwd("~/Coursera/data science JHU/Exploratory data analysis/Electric_power_consumption")
source("load_data.R")

png(filename="plot2.png", width=480, height=480)
with(pwc, plot(date_time, Global_active_power, xlab="", ylab = "Global active Power (Kilowatts)" , type="l"))
dev.off()
rm(pwc)