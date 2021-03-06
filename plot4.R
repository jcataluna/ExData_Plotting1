source("base.R")

data <- loadData()

png("plot4.png", width = 480, height = 480, bg = "transparent")

par(mfrow = c(2, 2))

ylimits = range(c(data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3))
with(data, {
    # First plot
    plot(Time, Global_active_power, type = "l", ylab = "Global Active Power")

    # Second plot
    plot(Time, Voltage, xlab = "datetime", type = "l", ylab = "Voltage")

    # Third plot
    plot(Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l", ylim = ylimits, col = "black")
    par(new = TRUE)
    plot(Time, Sub_metering_2, xlab = "", axes = FALSE, ylab = "", type = "l", ylim = ylimits, col = "red")
    par(new = TRUE)
    plot(Time, Sub_metering_3, xlab = "", axes = FALSE, ylab = "", type = "l", ylim = ylimits, col = "blue")
    legend("topright",
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           bg = "transparent",
           bty = "n",
           lty = c(1,1,1),
           col = c("black", "red", "blue")
    )
    
    # Fourth plot
    plot(Time, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
    
})

dev.off()
