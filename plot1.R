data <- read.table("./Desktop/household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";")
dataName <- sapply(read.table("./Desktop/household_power_consumption.txt", nrow = 1, sep = ";"), as.character)
names(data) <- name
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

hist(data$Global_active_power, xlab = "GLoabl Active Power (kilowatts)", main = "Global Active Power", col = "red")