source("base.R")

data <- loadData()

png("plot2.png", width = 480, height = 480, bg = "transparent")

plot(data$Time, data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

dev.off()


