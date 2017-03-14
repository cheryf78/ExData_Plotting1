#set the working directory
setwd("~/Coursera/data science JHU/Exploratory data analysis/Electric_power_consumption")
source("load_data.R")

png(filename="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
with(pwc,{plot(date_time, Global_active_power, xlab=" ", ylab = "Global active Power"  , type="l", col="black")
  plot(date_time, Voltage, type="l", xlab="datetime", ylab = "Voltage")
  plot(date_time, Sub_metering_1, xlab=" ", ylab = "Energy sub metering" , type="l", col="black")
  lines(date_time, Sub_metering_2, type="l", col="red")
  lines(date_time, Sub_metering_3, type="l", col="blue")
  legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lwd=1 )
  plot(date_time, Global_reactive_power, xlab="datetime", ylab = "Global_reactive_power"  , type="l", col="black")
  
})
dev.off()
rm(pwc)