


data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
pdata <- data[(data$Date=="2007-02-01") | (data$Date=="2007-02-02"),]

datetime <- strptime(paste(pdata$Date, pdata$Time, sep=" "), "%Y/%m/%d %H:%M:%S")
pdata <- transform(pdata, datetime=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")

plot(pdata$datetime, pdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
title(main="Global Active Power Vs Time")

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()

