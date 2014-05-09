
loadData <- function() {
    data <- read.csv("data/household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE, sep=";", na.strings="?")    
    
    data <- transform(data, Global_active_power = as.numeric(data$Global_active_power), 
                Global_reactive_power =as.numeric(data$Global_active_power), 
                Voltage=as.numeric(data$Voltage), 
                Global_intensity=as.numeric(data$Global_intensity), 
                Sub_metering_1=as.numeric(data$Sub_metering_1), 
                Sub_metering_2=as.numeric(data$Sub_metering_2), 
                Sub_metering_3=as.numeric(data$Sub_metering_3) )
    
    ## convert to DateTime
    data$Time <- dmy_hms(paste(data$Date, data$Time))
    
    ## Filter by date
    data <- data[data$Time >= ymd_hms("2007-02-01 00:00:00") & data$Time <= ymd_hms("2007-02-02 23:59:59"), ]
    
    data
}

