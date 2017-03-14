

#set the working directory
setwd("~/Coursera/data science JHU/Exploratory data analysis/Electric_power_consumption")
source("load_data.R")

png(filename="plot1.png", width=480, height=480)
with(pwc, hist(Global_active_power, main="Global Active Power", col = "red", xlab = "Global active Power (Kilowatts)" ))
dev.off()
rm(pwc)

