plot2 <- function() {
  # Load the relevant data from the file
  hpc <- getHPCData()

  # Plot a line graph
  plot(hpc$DateTime, hpc$Global_active_power,
       type = "l",
       main="Global Active Power",
       ylab="Global Active Power (kilowatts)",
       xlab="datetime",
       cex.main=0.8, cex.lab=0.8)

  # Copy the plot to a PNG file
  dev.copy(png, file="plot2.png")
  dev.off()
}
