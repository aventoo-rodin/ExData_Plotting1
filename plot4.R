# Load data first
source("loadData.R")
data <- loadData()

# Create PNG device
png(filename = "plot4.png", width = 480, height = 480)
# Set up plot parameters
par(mfrow = c(2, 2),
    bg = "transparent",
    mar=c(4, 4, 2, 2))

# Plot 1
# Do an emply plot
plot(data$Time, data$Global_active_power,
     type = "n",
     xlab = "",
     ylab = "Global Active Power")
# Draw a line
lines(data$Time, data$Global_active_power)

# Plot 2
# Do an emply plot
plot(data$Time, data$Voltage,
     type = "n",
     xlab = "datetime",
     ylab = "Voltage")
# Draw a line
lines(data$Time, data$Voltage)

# Plot 3
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
       col = c("black", "red", "blue"),
       bty = "n")

# Plot 4
# Do an emply plot
plot(data$Time, data$Global_reactive_power,
     type = "n",
     xlab = "datetime",
     ylab = "Global_reactive_power")
# Draw a line
lines(data$Time, data$Global_reactive_power)

# Close device
dev.off()
