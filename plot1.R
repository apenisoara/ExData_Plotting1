data=read.csv("dataset.txt",sep=";",dec=".",
              colClasses=c("Date","character",rep("numeric",7)),
              na.strings="?")

png(file="plot1.png", width=480, height=480)
hist(data$Global_active_power,col="red",
     xlab="Global Active Power (killowatts)",
     main="Global Active Power")
dev.off()
