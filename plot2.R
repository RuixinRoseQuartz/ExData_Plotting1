data <- read.table("./Desktop/household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";")
dataName <- sapply(read.table("./Desktop/household_power_consumption.txt", nrow = 1, sep = ";"), as.character)
names(data) <- name
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

with(data, plot(DateTime, Global_active_power, type = "n", xlab = "daytime", ylab = "Global Active Power (kilowatts)"))
axis(1, at=c(as.numeric(min(data$DateTime)), as.numeric(min(data$DateTime))+86400,
    as.numeric(min(data$DateTime))+2*86400), labels=c("Thu", "Fri", "Sat"))
with(data, points(DateTime, Global_active_power, type = "l"))
