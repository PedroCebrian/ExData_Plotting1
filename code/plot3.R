plot3 <- function(){
    source("read_data.R")
    data <- read_data()
    png(filename = "plot3.png", width = 480, height = 480, units = "px")
    with(data, {
        plot(RTime, Sub_metering_1, xlab="", ylab="Energy sub metering")
        lines(RTime, Sub_metering_2, type="l", col="red")
        lines(RTime, Sub_metering_3, type="l", col="blue")
        legend("topright", col=c("black","blue","red"), lty="solid", 
               legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
        })
    dev.off()
}