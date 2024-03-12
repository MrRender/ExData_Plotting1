data <- read.table("C:/Users/yuval/Desktop/R/ex.1/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, format = "%H:%M:%S")
subset_data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")

# Plot the data without the default x-axis
par(mar = c(4, 4, 2, 1))  # Adjust margins (bottom, left, top, right)
plot(1:nrow(subset_data), subset_data$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)", main = "Global Active Power over Time", xaxt = "n")

# Add a continuous line connecting all data points
lines(1:nrow(subset_data), subset_data$Global_active_power, col = "blue")

# Customize the x-axis labels
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Save the plot as a PNG file
png("plot2.png", width = 480, height = 480, units = "px")

# Plot the data without the default x-axis
par(mar = c(4, 4, 2, 1))  # Adjust margins (bottom, left, top, right)
plot(1:nrow(subset_data), subset_data$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)", main = "Global Active Power over Time", xaxt = "n")

# Add a continuous line connecting all data points
lines(1:nrow(subset_data), subset_data$Global_active_power, col = "blue")

# Customize the x-axis labels
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat")) 
dev.off()

