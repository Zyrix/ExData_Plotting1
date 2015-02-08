# read and clean the data
source("read_and_clean.R")

# open png graphics device
png("plot3.png")

# plot of sub metering 1-3 in respect to time
plot(sub$DateTime, sub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(x = sub$DateTime, y = sub$Sub_metering_2, col = "red")
lines(x = sub$DateTime, y = sub$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red","blue"))

# save and shut down graphics device
invisible(dev.off())