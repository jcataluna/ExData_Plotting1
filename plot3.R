source("base.R")

data <- loadData()

png("plot3.png", width = 480, height = 480, bg = "white")
ylimits = range(c(data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3))
with(data, {
    plot(Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l", ylim = ylimits, col = "black")   
    par(new = TRUE)
    plot(Time, Sub_metering_2, xlab = "", axes = FALSE, ylab = "", type = "l", ylim = ylimits, col = "red")
    par(new = TRUE)
    plot(Time, Sub_metering_3, xlab = "", axes = FALSE, ylab = "", type = "l", ylim = ylimits, col = "blue")
})

legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       #bg = "transparent",
       #bty = "n",
       lty = c(1,1,1),
       col = c("black", "red", "blue")
)
dev.off()
