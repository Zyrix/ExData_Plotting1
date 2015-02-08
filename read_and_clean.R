# download and extract data file only if it doesn't already exist
if (!file.exists("household_power_consumption.txt")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
    unzip("household_power_consumption.zip")
}

# read in data file and clean NA rows
hh <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
hh <- na.omit(hh)

# convert date to Date class and subset the two relevant days
hh$Date <- as.Date(hh$Date, "%d/%m/%Y")
sub <- hh[hh$Date == "2007-02-01" | hh$Date == "2007-02-02",]

# convert all but date and time columns to numeric format
sub[,3:ncol(sub)] <- lapply(3:ncol(sub), function(x) as.numeric(as.character(sub[,x])))

# create new Date/Time column with proper format and delete existing date and time columns
sub$DateTime <- strptime(paste(sub$Date, sub$Time), "%Y-%m-%d %H:%M:%S")
sub$Date <- NULL
sub$Time <- NULL