source("read_and_clean.R")
png("plot2.png")
plot(sub$DateTime, sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
invisible(dev.off())