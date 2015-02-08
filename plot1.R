# read and clean the data
source("read_and_clean.R")

# open png graphics device
png("plot1.png")

# histogram of global active power
hist(sub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

# save and shut down graphics device
invisible(dev.off())