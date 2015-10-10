getHPCData <- function() {
  # The data file is expected to be in the working directory
  # and to have the following name:
  hpcfile <- "household_power_consumption.txt"
  
  # Through visual inspection of the file, skipping the
  # 'first' lines and reading up to the 'last' will read
  # in just those rows required. This will read 2880 observations
  # ie 2x24x60 readings, one per minute for two days.
  first <- 66637
  last <- 69517
  hpc <- read.csv(hpcfile, header=F, skip=first, nrow=last-first, sep=";")

  # The first line contains the column names, this is read,
  # split on the ; and applied to the data frame
  hpcnames <- readLines(hpcfile, n=1)
  names(hpc) <- strsplit(hpcnames, ";")[[1]]
  
  # Create a DateTime column of class POSIXlt from
  # the Date and Time columns.
  hpc$DateTime <- paste(hpc$Date, hpc$Time)
  hpc$DateTime <- strptime(hpc$DateTime, "%d/%m/%Y %H:%M:%S")
  
  # Finally return the data frame
  return(hpc)
}
