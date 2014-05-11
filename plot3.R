data=read.csv("dataset.txt",sep=";",dec=".",
              colClasses=c(rep("character",2),rep("numeric",7)),
              na.strings="?")
datetime<-strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")

png(file="plot3.png", width=480, height=480)
plot(datetime,data$Sub_metering_1,type="l",
     xlab="",
     ylab="Energy sub metering",
     main="")
lines(datetime,data$Sub_metering_2,col="red")
lines(datetime,data$Sub_metering_3,col="blue")
legend("topright",lwd=1,col=c("black","red","blue"), legend=names(data)[7:9])
dev.off()
