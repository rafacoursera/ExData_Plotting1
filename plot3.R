plot3 <- function(){
  ata <- read.csv("household_power_consumption.txt", sep=";")
  data2 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
  data2$newTime <- paste(data2$Date, data2$Time)
  data2$newTime <- strptime(data2$newTime, "%d/%m/%Y %H:%M:%S")
  data2$Global_active_power <- as.numeric(as.character(data2$Global_active_power))
  data2$Sub_metering_1 <- as.numeric(as.character(data2$Sub_metering_1))
  data2$Sub_metering_2 <- as.numeric(as.character(data2$Sub_metering_2))
  data2$Sub_metering_3 <- as.numeric(as.character(data2$Sub_metering_3))
  p <- plot(data2$newTime, data2$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")  > lines(data2$newTime,data2$Sub_metering_2, col="red")
  lines(data2$newTime,data2$Sub_metering_2, col="red")
  lines(data2$newTime,data2$Sub_metering_3, col="blue")
  vars <- c("Sub_metering_1","Sub_metering_2", "Sub_metering_3")
  colors <- c("black","red","blue")
  legend("topright",legend=vars, lty=c(1,1,1), col=colors)
  dev.copy(png,"plot3.png")
  dev.off()
  
}