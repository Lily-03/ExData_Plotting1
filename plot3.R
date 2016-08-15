## First the variables have to be changed

sd$Sub_metering_1 <- as.numeric(as.character(sd$Sub_metering_1))
sd$Sub_metering_2 <- as.numeric(as.character(sd$Sub_metering_2))
sd$Sub_metering_3 <- as.numeric(as.character(sd$Sub_metering_3))

## Then we make a first plot to which we will be adding the other variables as lines

plot(sd$timestamp,sd$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(sd$timestamp,sd$Sub_metering_2,col="red")
lines(sd$timestamp,sd$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), lwd=c(1,1))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
