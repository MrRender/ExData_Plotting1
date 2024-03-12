data <- read.table("C:/Users/yuval/Desktop/R/ex.1/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, format = "%H:%M:%S")
subset_data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")

# Plot the data without the default x-axis and reduce margins
par(mar = c(4, 4, 2, 1))  # Adjust margins (bottom, left, top, right)
plot(1:nrow(subset_data), subset_data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering", xaxt = "n")

# Add lines for Sub_metering columns 1, 2, and 3
lines(1:nrow(subset_data), subset_data$Sub_metering_1, col = "black")
lines(1:nrow(subset_data), subset_data$Sub_metering_2, col = "red")
lines(1:nrow(subset_data), subset_data$Sub_metering_3, col = "blue")

# Customize the x-axis labels
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

# Save the plot as a PNG file
png("plot3.png", width = 480, height = 480, units = "px", res = 300)

# Plot the data without the default x-axis and reduce margins
par(mar = c(4, 4, 2, 1))  # Adjust margins (bottom, left, top, right)
plot(1:nrow(subset_data), subset_data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering", xaxt = "n")

# Add lines for Sub_metering columns 1, 2, and 3
lines(1:nrow(subset_data), subset_data$Sub_metering_1, col = "black")
lines(1:nrow(subset_data), subset_data$Sub_metering_2, col = "red")
lines(1:nrow(subset_data), subset_data$Sub_metering_3, col = "blue")

# Customize the x-axis labels
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

dev.off()
