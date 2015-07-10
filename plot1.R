# Load data first
source("loadData.R")
data <- loadData()

# Create PNG device
png(filename = "plot1.png", width = 480, height = 480)
# Set up plot parameters
par(bg = "transparent")
# Draw a histogram
hist(data$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
# Close device
dev.off()
