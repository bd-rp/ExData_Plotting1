#readdata
consumption <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";")
Datetime <- strptime(paste(consumption$Date, consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
consumption <- cbind(consumption,Datetime)


consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")
consumption$Time <- format(consumption$Time, format="%H:%M:%S")
Feb_2017 <- consumption[consumption$Date >= "2007-02-01" & consumption$Date <= "2007-02-02",]
Feb_2017$Global_active_power <- as.numeric(Feb_2017$Global_active_power)
Feb_2017$Global_reactive_power <- as.numeric(Feb_2017$Global_reactive_power)
Feb_2017$Voltage <- as.numeric(Feb_2017$Voltage)
Feb_2017$Global_intensity <- as.numeric(Feb_2017$Global_intensity)
Feb_2017$Sub_metering_1 <- as.numeric(Feb_2017$Sub_metering_1)
Feb_2017$Sub_metering_2 <- as.numeric(Feb_2017$Sub_metering_2)
Feb_2017$Sub_metering_3 <- as.numeric(Feb_2017$Sub_metering_3)


plot1 <- with(Feb_2017, hist(Global_active_power, col="red", main= "Global Active Power", xlab= "Global Active Power(kilowatts)"))
