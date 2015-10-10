plot3 <- function() {
  # Load the relevant data from the file
  hpc <- getHPCData()

  # Plot a line graph
  plot(hpc$DateTime, hpc$Sub_metering_1,
       type = "l",
       main="Energy sub metering",
       ylab="Energy sub metering (watt-hours)",
       xlab="datetime",
       cex.main=0.8, cex.lab=0.8)

  # Add two more lines
  lines(hpc$DateTime, hpc$Sub_metering_2, col="red")
  lines(hpc$DateTime, hpc$Sub_metering_3, col="blue")

  # Add a legend
  legend("topright", 
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         col=c("black","red","blue"), lty=1)

  # Copy the plot to a PNG file
  dev.copy(png, file="plot3.png")
  dev.off()
}
