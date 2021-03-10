#plot3 
with(Feb_2017, plot(Datetime, Sub_metering_1, type="l", ylab= "Energy sub metering", xlab= NA))
lines(Feb_2017$Datetime, Feb_2017$Sub_metering_2, type="l", col="red")
lines(Feb_2017$Datetime, Feb_2017$Sub_metering_3, type="l", col="blue")
legend("topright",col = c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty= 1, lwd=2)