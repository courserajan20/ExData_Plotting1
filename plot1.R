data <- data.table::fread("household_power_consumption.txt", nrows = -1, na.strings = "?")

# Desired observations (accourding to the date)
selected <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Change the datatype of "Date" column
selected$Date <- as.Date(selected$Date,"%d/%m/%y")

# Set the plot canvan size
png("plot1.png", width = 480, height = 480)

# plotting the graph
hist(selected$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Gloabal Active Power(kilowats)", ylab = "Frequency")
dev.off()



