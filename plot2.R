## load code for subseting the housesold_power_consumption data and changing the class of the date/time column
source("readFile.R")

# Open PNG device file
png("plot2.png")

# plotting a line graph by settong type = "l"
plot(hpc$Date, hpc$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power (kilowatts)")

# closing the device file
dev.off()
