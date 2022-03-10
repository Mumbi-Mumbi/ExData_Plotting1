## load code for subseting the housesold_power_consumption data and changing the class of the date/time column
source("readFile.R")

# Open PNG device file
png("plot3.png")

# plotting an empty graph
plot(hpc$Date, hpc$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n")

# annotating the point one by one
points(hpc$Date, hpc$Sub_metering_1, type = "l")
points(hpc$Date, hpc$Sub_metering_2, type = "l", col = "red")
points(hpc$Date, hpc$Sub_metering_3, type = "l", col = "blue")

# adding a legend
legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"))

# closing the device file
dev.off()
