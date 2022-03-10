## load code for subseting the housesold_power_consumption data and changing the class of the date/time column
source("readFile.R")

# Open PNG device file
png("plot1.png")

# plotting a histogram by setting the Global_active_power as numeric
hist(as.numeric(hpc$Global_active_power), main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col = "red")

# closing the device file
dev.off()
