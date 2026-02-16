data <- read.table("household_power_consumption.txt")

data <- read.table(
  "household_power_consumption.txt",
  header = TRUE,
  sep = ";",
  na.strings = "?",
  stringsAsFactors = FALSE
)

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

plot(subset_data$DateTime, subset_data$Global_active_power,
     type = "l", xlab = "", ylab = "Global Active Power")

plot(subset_data$DateTime, subset_data$Voltage,
     type = "l", xlab = "datetime", ylab = "Voltage")

plot(subset_data$DateTime, subset_data$Sub_metering_1,
     type = "l", ylab = "Energy sub metering", xlab = "")
lines(subset_data$DateTime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$DateTime, subset_data$Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1,
       bty = "n")

plot(subset_data$DateTime, subset_data$Global_reactive_power,
     type = "l", xlab = "datetime", ylab = "Global Reactive Power")

dev.off()