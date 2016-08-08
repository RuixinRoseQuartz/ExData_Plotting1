ata <- read.table("./Desktop/household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";")
dataName <- sapply(read.table("./Desktop/household_power_consumption.txt", nrow = 1, sep = ";"), as.character)
names(data) <- name
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

with(data, plot(DateTime, Sub_metering_1, type = "n", ylab = "Energy sub metering"))
axis(1, at=c(as.numeric(min(data$DateTime)), as.numeric(min(data$DateTime))+86400
             , as.numeric(min(data$DateTime))+2*86400), labels=c("Thu", "Fri", "Sat"))
with(data, points(DateTime, Sub_metering_1, type = "l"))
with(data, points(DateTime, Sub_metering_2, type = "l", col = "red"))
with(data, points(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", pch = "¢w", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))