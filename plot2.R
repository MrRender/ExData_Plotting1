



# Convert the Time column to POSIXct class
subset_data$Time <- as.POSIXct(subset_data$Time)

# Extract the day of the week (e.g., Thu, Fri, Sat)
subset_data$Day <- format(subset_data$Time, "%a")

# Plot the data without the default x-axis
plot(1:nrow(subset_data), subset_data$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)", main = "Global Active Power over Time", xaxt = "n")

# Add a continuous line connecting all data points
lines(1:nrow(subset_data), subset_data$Global_active_power, col = "blue")

# Customize the x-axis labels
axis(1, at = c(1, nrow(subset_data)/2, nrow(subset_data)), labels = c("Thu", "Fri", "Sat"))

# Save the plot as a PNG file
png("plot2.png", width = 480, height = 480, units = "px", res = 300)
dev.off()
