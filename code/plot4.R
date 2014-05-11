plot4 <- function(){
    source("read_data.R")
    data <- read_data()
    png(filename = "plot4.png", width = 480, height = 480, units = "px")
    par (mfrow = c(2,2))
    with(data, {
        plot(RTime, Global_active_power, type="l", xlab="",
             ylab="Global Active Power (kilowatts)")
        
        plot(RTime, Voltage, xlab="datetime", ylab="Voltage", type="l")
        
        plot(RTime, Sub_metering_1, xlab="", ylab="Energy sub metering")
             lines(RTime, Sub_metering_2, type="l", col="red")
             lines(RTime, Sub_metering_3, type="l", col="blue")
             legend("topright", col=c("black","blue","red"), lty="solid", 
                    legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
        
        plot(RTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")        
    })    
    dev.off()
    
}