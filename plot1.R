plot1 <- function(){
  data <- read.csv("household_power_consumption.txt", sep=";")
  data2 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
  data2$Global_active_power <- as.numeric(as.character(data2$Global_active_power))
  h<-hist(data2$Global_active_power, col="red", main="Global active power", xlab="Global active power (kilowatts)")
  dev.copy(png,"plot1.png")
  dev.off()
}