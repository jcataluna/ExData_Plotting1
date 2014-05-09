source("base.R")

data <- loadData()

png("plot1.png", width = 480, height = 480, bg = "white")
hist(data$Global_active_power, main = "Global Active power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()


