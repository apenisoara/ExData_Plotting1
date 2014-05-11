data=read.csv("dataset.txt",sep=";",dec=".",
              colClasses=c(rep("character",2),rep("numeric",7)),
              na.strings="?")
datetime<-strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")

png(file="plot4.png", width=480, height=480)
par(mfrow=c(2,2))

#Graph 1
plot(datetime,data$Global_active_power,type="l",
     xlab="",
     ylab="Global Active Power",
     main="")

#Graph 2
plot(datetime,data$Voltage, ylab="Voltage", type="l")

#Graph 3
plot(datetime,data$Sub_metering_1,type="l",
     xlab="",
     ylab="Energy sub metering",
     main="")
lines(datetime,data$Sub_metering_2,col="red")
lines(datetime,data$Sub_metering_3,col="blue")
legend("topright",lwd=1, col=c("black","red","blue"), legend=names(data)[7:9], bty="n")

#Graph 4
with(data, plot(datetime,Global_reactive_power, type="l"))

dev.off()
