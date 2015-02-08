# read and clean the data
source("read_and_clean.R")

# open png graphics device
png("plot4.png")

# set graphics canvas to four graphic panels
par(mfrow = c(2, 2))

# plot of global active power in respect to time
plot(sub$DateTime, sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

# plot of voltage in respect to time
plot(sub$DateTime, sub$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# plot of sub metering 1-3 in respect to time
plot(sub$DateTime, sub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(x = sub$DateTime, y = sub$Sub_metering_2, col = "red")
lines(x = sub$DateTime, y = sub$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red","blue"), bty="n")

# plot of global reactive power in respect to time
plot(sub$DateTime, sub$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

# reset graphics canvas to default value
par(mfrow = c(1, 1))

# save and shut down graphics device
invisible(dev.off())