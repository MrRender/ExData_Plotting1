> data <- read.table("C:/Users/yuval/Desktop/R/ex.1/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
> data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
> data$Time <- strptime(data$Time, format = "%H:%M:%S")
> subset_data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
> hist(subset_data$Global_active_power, 
      col = "red", 
      xlab = "Global Active Power (kilowatts)", 
      ylab = "Frequency",
      main = "Global Active Power"
 )
> png("plot1.png", width = 480, height = 480)
> hist(subset_data$Global_active_power, 
      col = "red", 
      xlab = "Global Active Power (kilowatts)", 
      ylab = "Frequency",
      main = "Global Active Power"
 )
> dev.off()
