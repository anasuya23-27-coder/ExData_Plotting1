data <- read.table("household_power_consumption.txt")
> View(data)
> data <- read.table(
  +     "household_power_consumption.txt",
  +     header = TRUE,
  +     sep = ";",
  +     na.strings = "?",
  +     stringsAsFactors = FALSE
  + )
> 
  > data$Date<-as.Date(data$Date, format = "%d/%m/%Y")
  > subset_data<-subset(data, Date == as.Date("2007-02-01")| Date == as.Date("2007-02-02"))
  > subset_data$DateTime <- strptime(
    +     paste(subset_data$Date, subset_data$Time),
    +     format = "%Y-%m-%d %H:%M:%S"
    + )
  #Plot 1 - Global Active Power
  > png("plot1.png", width = 480, height = 480)
  > 
    > hist(
      +     subset_data$Global_active_power,
      +     col = "red",
      +     main = "Global Active Power",
      +     xlab = "Global Active Power (kilowatts)"
      + )
  > 
    > dev.off()