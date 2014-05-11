read_data <- function(){
    fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    fname <- "household_power_consumption.zip"
    
    ## Download file if not already downloaded
    if(!file.exists("household_power_consumption.zip")) {
        download.file(fileURL, destfile=fname)
        con <- unz(fname, "household_power_consumption.txt")
        data <- read.table(con, header=T, sep=';', na.strings="?",
                           colClasses=c("character","character","numeric","numeric",
                                        "numeric","numeric","numeric","numeric","numeric"))
        close(con)
    }
    con <- unz(fname, "household_power_consumption.txt")
    data <- read.table(con, header=T, sep=';', na.strings="?",
                       colClasses=c("character","character","numeric","numeric",
                                    "numeric","numeric","numeric","numeric","numeric"))
    
    ## Subsetting data
    data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
    ## Including new variable with R times
    data$RTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    data
    
}