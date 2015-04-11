#4 plot4.R

setwd("D:/Sameers/SamProjs/myR")

d2 <- read.table("exdata_prj/household_power_consumption.txt",sep=";", header=TRUE,na.strings="?")

d3 <- d2[d2$Date == "1/2/2007" | d2$Date == "2/2/2007",]

d3$DateTime <- as.POSIXct(paste(d3$Date, d3$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")


par(mfcol=c(2,2))

plot(d3$DateTime, 
     d3$Global_active_power, 
     type="l",
     col="black", 
     xlab="", 
     ylab="Global Active Power (kilowatts)", 
     main="")

plot(d3$DateTime, 
     d3$Sub_metering_1, 
     type="l",
     col="black", 
     xlab="", 
     ylab="Energy sub metering", 
     main="")

lines(d3$DateTime, d3$Sub_metering_2, col="red")

lines(d3$DateTime, d3$Sub_metering_3, col="blue")

legend("topright", 
       lwd=1, 
       lty=1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(d3$DateTime, 
     d3$Voltage, 
     type="l",
     col="black", 
     xlab="datetime", 
     ylab="Voltage", 
     main="")

plot(d3$DateTime, 
     d3$Global_reactive_power, 
     type="l",
     col="black", 
     xlab="datetime", 
     ylab="Global_reactive_power", 
     main="")


dev.copy(png, file="exdata_prj/plot4.png")

dev.off()
