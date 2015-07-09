# Load data first
source("loadData.R")
data <- loadData()

# Plot 1
png(filename = "plot3.png", width = 480, height = 480)
# Set up plot parameters
par(bg = "transparent",
    mar=c(2, 4, 2, 2))
# Do an emply plot
plot(data$Time, pmax(data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3),
     type = "n",
     xlab = "",
     ylab = "Energy sub metering")
# Draw lines in different colours
lines(data$Time, data$Sub_metering_1, col = "black")
lines(data$Time, data$Sub_metering_2, col = "red")
lines(data$Time, data$Sub_metering_3, col = "blue")
# Add legend
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1, 1, 1),
       col = c("black", "red", "blue"))
dev.off()
