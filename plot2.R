plot2 <- function(){
  data <- read.csv("household_power_consumption.txt", sep=";")
  data2 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
  data2$newTime <- paste(data2$Date, data2$Time)
  data2$newTime <- strptime(data2$newTime, "%d/%m/%Y %H:%M:%S")
  data2$Global_active_power <- as.numeric(as.character(data2$Global_active_power))
  p <- plot(data2$newTime, data2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.copy(png,"plot2.png")
  dev.off()
}