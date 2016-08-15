## Since this was the first plot I made I had to load the data into R, it was already stored in my computer

hhpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
hhpc$Date <- as.Date (hhpc$Date, format="%d/%m/%Y")
sd <- hhpc[(hhpc$Date=="2007-02-01") | (hhpc$Date=="2007-02-02"),]

## This is the code used to get plot1.png

sd$Global_active_power <- as.numeric(as.character(sd$Global_active_power))
hist(sd$Global_active_power, main="Global Active Power", col="red", 
breaks=12, xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
