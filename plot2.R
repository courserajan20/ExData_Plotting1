## Plot 2

# Reading .txt data to table
data <- data.table::fread("household_power_consumption.txt", nrows = -1, na.strings = "?")

# Desired observations (accourding to the date)
selected <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Convert the date and time to Date/Time(to be used in x axis)
dateTime <- strptime(paste(selected$Date, selected$Time), "%d/%m/%Y %H:%M:%S")


# Set the plot canvan size
png("plot2.png", width = 480, height = 480)

# plotting the graph
plot(dateTime, selected$Global_active_power, type = "l", xlab="", ylab = "Gloabal Active Power(kilowats)")
dev.off()



