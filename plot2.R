# Load data first
source("loadData.R")
data <- loadData()

# Plot 1
png(filename = "plot2.png", width = 480, height = 480)
# Set up plot parameters
par(bg = "transparent",
    mar=c(2, 4, 2, 2))
# Do an emply plot
plot(data$Time, data$Global_active_power,
     type = "n",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
# Draw a line
lines(data$Time, data$Global_active_power)
dev.off()
