# Read the whole file first
allData <- read.csv("household_power_consumption.txt",
                    sep=";",
                    na.strings = "?",
                    colClasses = c("character", "character", "numeric",
                                   "numeric", "numeric", "numeric",
                                   "numeric", "numeric", "numeric"))
# Filter data
data <- allData[allData$Date %in% c("1/2/2007", "2/2/2007"),]
# Convert Date and Time columns to native formats
data$Time <- strptime(paste0(data$Date, rep(" ", nrow(data)), data$Time),
                      format = "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date , format = "%d/%m/%Y")
