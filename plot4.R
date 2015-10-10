plot4 <- function() {
  # Load the relevant data from the file
  hpc <- getHPCData()

  # Set up for four plots in a 2x2 grid
  par(mfrow=c(2,2))

  # Plot a line graph
  plot(hpc$DateTime, hpc$Global_active_power,
       type = "l",
       main="Global Active Power",
       ylab="Global Active Power (kilowatts)",
       xlab="datetime",
       cex.main=0.8, cex.lab=0.6)

  # Plot a line graph
  plot(hpc$DateTime, hpc$Voltage,
       type = "l",
       main="Voltage",
       ylab="Voltage (volts)",
       xlab="datetime",
       cex.main=0.8, cex.lab=0.6)
  
  # Plot a line graph with two extra lines and a legend
  plot(hpc$DateTime, hpc$Sub_metering_1,
       type = "l",
       main="Energy sub metering",
       ylab="Energy sub metering (watt-hours)",
       xlab="datetime",
       cex.main=0.8, cex.lab=0.6)
  lines(hpc$DateTime, hpc$Sub_metering_2, col="red")
  lines(hpc$DateTime, hpc$Sub_metering_3, col="blue")
  legend("topright", 
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         col=c("black","red","blue"), lty=1, bty = "n", cex=0.9)
  
  # Plot a line graph
  plot(hpc$DateTime, hpc$Global_reactive_power,
       type = "l",
       main="Global Reactive Power",
       ylab="Global Resctive Power (kilowatts)",
       xlab="datetime",
       cex.main=0.8, cex.lab=0.6)
  
  # Copy the plot to a PNG file
  dev.copy(png, file="plot4.png")
  dev.off()
}
