plot2 <- function(){
    source("read_data.R")
    data <- read_data()
    png(filename = "plot2.png", width = 480, height = 480, units = "px")
    with(data, {
        plot(RTime, Global_active_power, type="l", xlab="",
             ylab="Global Active Power (kilowatts)")
    })
    dev.off()
    
}