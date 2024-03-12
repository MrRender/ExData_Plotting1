data <- read.table("C:/Users/yuval/Desktop/R/ex.1/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, format = "%H:%M:%S")
subset_data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")

# Set up the plot layout
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))  # 2 rows, 2 columns

# Plot Global_active_power in the top-left section
plot(1:nrow(subset_data), subset_data$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power", xaxt = "n")
lines(1:nrow(subset_data), subset_data$Global_active_power, col = "black")
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Plot Voltage in the top-right section
plot(1:nrow(subset_data), subset_data$Voltage, type = "n", xlab = "datetime", ylab = "Voltage", xaxt = "n")
lines(1:nrow(subset_data), subset_data$Voltage, col = "black")
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Plot Sub_metering in the bottom-left section
plot(1:nrow(subset_data), subset_data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(1:nrow(subset_data), subset_data$Sub_metering_1, col = "black")
lines(1:nrow(subset_data), subset_data$Sub_metering_2, col = "red")
lines(1:nrow(subset_data), subset_data$Sub_metering_3, col = "blue")
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Add legend for Sub_metering plots
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")

# Plot Global_reactive_power in the bottom-right section
plot(1:nrow(subset_data), subset_data$Global_reactive_power, type = "n", xlab = "datetime", ylab = "Global Reactive Power", xaxt = "n")
lines(1:nrow(subset_data), subset_data$Global_reactive_power, col = "black")
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

png("plot4.png", width = 400, height = 400, units = "px")

# Set up the plot layout
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))  # 2 rows, 2 columns

# Plot Global_active_power in the top-left section
plot(1:nrow(subset_data), subset_data$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power", xaxt = "n")
lines(1:nrow(subset_data), subset_data$Global_active_power, col = "black")
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Plot Voltage in the top-right section
plot(1:nrow(subset_data), subset_data$Voltage, type = "n", xlab = "datetime", ylab = "Voltage", xaxt = "n")
lines(1:nrow(subset_data), subset_data$Voltage, col = "black")
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Plot Sub_metering in the bottom-left section
plot(1:nrow(subset_data), subset_data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(1:nrow(subset_data), subset_data$Sub_metering_1, col = "black")
lines(1:nrow(subset_data), subset_data$Sub_metering_2, col = "red")
lines(1:nrow(subset_data), subset_data$Sub_metering_3, col = "blue")
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Add legend for Sub_metering plots
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")

# Plot Global_reactive_power in the bottom-right section
plot(1:nrow(subset_data), subset_data$Global_reactive_power, type = "n", xlab = "datetime", ylab = "Global Reactive Power", xaxt = "n")
lines(1:nrow(subset_data), subset_data$Global_reactive_power, col = "black")
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

dev.off()

