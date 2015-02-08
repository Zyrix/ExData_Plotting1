# read and clean the data
source("read_and_clean.R")

# open png graphics device
png("plot2.png")

# plot of global active power in respect to time
plot(sub$DateTime, sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# save and shut down graphics device
invisible(dev.off())