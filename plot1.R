plot1 <- function() {
  # Load the relevant data from the file
  hpc <- getHPCData()

  # Plot a histogram
  hist(hpc$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       cex.main=0.8, cex.lab=0.8,
       col="red")

  # Copy the plot to a PNG file
  dev.copy(png, file="plot1.png")
  dev.off()
}
