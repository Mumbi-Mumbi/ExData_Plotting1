## load code for subseting the housesold_power_consumption data and changing the class of the date/time column
source("readFile.R")

# Open PNG device file
png("plot4.png")

# Using the par function to set the number of rows and columns as well as the mrgins of the canvas
par(mfrow = c(2,2))
par(mar = c(4,4,2,2))

# plotting the first graph on the top left
plot(hpc$Date, hpc$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power (kilowatts)")

# plotting the second graph on the top right
plot(hpc$Date, hpc$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

# plotting the third graph on the bottom left
plot(hpc$Date, hpc$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n")
points(hpc$Date, hpc$Sub_metering_1, type = "l")
points(hpc$Date, hpc$Sub_metering_2, type = "l", col = "red")
points(hpc$Date, hpc$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), cex = 0.5)

# plotting the fourth graph on the bottom right
plot(hpc$Date, hpc$Global_reactive_power, xlab = "datetime", 
     ylab = "Global_reactive_power", type = "l")

# closing the device file
dev.off()