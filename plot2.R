#2 plot2.R

setwd("D:/Sameers/SamProjs/myR")

d2 <- read.table("exdata_prj/household_power_consumption.txt",sep=";", header=TRUE,na.strings="?")

d3 <- d2[d2$Date == "1/2/2007" | d2$Date == "2/2/2007",]

d3$DateTime <- as.POSIXct(paste(d3$Date, d3$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

plot(d3$DateTime,d3$Global_active_power,type ="l", xlab ="", ylab= "Global Active Power (kilowatts)")
dev.copy(png, file="exdata_prj/plot2.png")

dev.off()
