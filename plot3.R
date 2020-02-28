## Plot 3

# Reading .txt data to table
data <- data.table::fread("household_power_consumption.txt", nrows = -1, na.strings = "?")

# Desired observations (accourding to the date)
selected <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Convert the date and time to Date/Time(To be used in x axis)
dateTime <- strptime(paste(selected$Date, selected$Time), "%d/%m/%Y %H:%M:%S")


# Set the plot canvan size
png("plot3.png", width = 480, height = 480)

# plotting the graph
plot(dateTime, selected$Sub_metering_1, type = "l", xlab="", ylab = "Energy sub metering")
lines(dateTime, selected$Sub_metering_2, col="red")
lines(dateTime, selected$Sub_metering_3, col="blue")
legend("topright", col = c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1,lwd=2)

dev.off()



