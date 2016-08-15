## The variables that haven't been used need to be changed for them to be plotted

sd$Voltage <- as.numeric(as.character(sd$Voltage))
sd$Global_reactive_power <- as.numeric(as.character(sd$Global_reactive_power))

## This will tell R how we want the 4 plots to be arranged

par(mfrow=c(2,2))

## Then we have to write the code for each one of the plots
## Number 1
plot(sd$timestamp,sd$Global_active_power, type="l", xlab="", ylab="Global Active Power")
## Number 2
 plot(sd$timestamp,sd$Voltage, type="l", xlab="Datetime", ylab="Voltage")
## Number 3
plot(sd$timestamp,sd$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(sd$timestamp,sd$Sub_metering_2,col="red")
lines(sd$timestamp,sd$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), bty="n")
## Number 4
plot(sd$timestamp,sd$Global_reactive_power, type="l", xlab="Datetime", ylab="Global Reactive Power")

## To make it into png
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
