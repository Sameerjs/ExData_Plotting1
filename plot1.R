#1 plot1.R

setwd("D:/Sameers/SamProjs/myR")

d2 <- read.table("exdata_prj/household_power_consumption.txt",sep=";", header=TRUE,na.strings="?")

d3 <- d2[d2$Date == "1/2/2007" | d2$Date == "2/2/2007",]

hist(d3$Global_active_power, col="Red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.copy(png, file="exdata_prj/plot1.png")

dev.off()

