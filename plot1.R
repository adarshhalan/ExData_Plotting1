



data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
pdata <- data[(data$Date=="2007-02-01") | (data$Date=="2007-02-02"),]


#plot 1
globalActivePower <- as.numeric(pdata$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", type = "1",  xlab="Global Active Power (kilowatts)" )
title(main="Global Active Power")


dev.copy(png, file = "plot1.png", width=480, height=480)
dev.off()

