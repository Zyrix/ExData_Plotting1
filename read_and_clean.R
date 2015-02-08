hh <- read.csv("household_power_consumption.txt", sep = ";")
hh$Date <- as.Date(hh$Date, "%d/%m/%Y")
sub <- hh[hh$Date == "2007-02-01" | hh$Date == "2007-02-02",]
sub[,3:ncol(sub)] <- lapply(3:ncol(sub), function(x) as.numeric(as.character(sub[,x])))
sub$DateTime <- strptime(paste(sub$Date, sub$Time), "%Y-%m-%d %H:%M:%S")
sub$Date <- NULL
sub$Time <- NULL