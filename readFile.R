# load the data set into R
hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

# combine the date and time columns together
hpc$Date <- paste(hpc$Date,hpc$Time)
# delete the time column
hpc$Time <- NULL
# change class of the date column into Date
hpc$Date <- strptime(hpc$Date, format = "%d/%m/%Y %H:%M:%S")
# subset the data set by date
hpc <- subset(hpc, Date >= "2007-02-01" & Date < "2007-02-03")

