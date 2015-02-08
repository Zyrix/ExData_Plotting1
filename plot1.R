source("read_and_clean.R")
png("plot1.png")
hist(sub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
invisible(dev.off())