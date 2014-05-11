data=read.csv("dataset.txt",sep=";",dec=".",
              colClasses=c(rep("character",2),rep("numeric",7)),
              na.strings="?")
datetime<-strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")

png(file="plot2.png", width=480, height=480)
plot(datetime,data$Global_active_power,type="l",
     xlab="",
     ylab="Global Active Power (killowatts)",
     main="")
dev.off()
