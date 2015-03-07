setwd("C:/Users/Public/Documents/R")
df <- read.table("./data/household_power_consumption.txt",sep=";",dec=".",header=TRUE,stringsAsFactors=FALSE,na.strings="?",colClasses=c(rep("character",2), rep("numeric",7)))
df2<-df[df$Date=="1/2/2007" | df$Date=="2/2/2007" ,]
df2$DateTime<-strptime(paste(df2$Date,df2$Time),"%d/%m/%Y %H:%M:%S")
with(df2,plot(DateTime,Global_active_power,type="l",bg="white",xlab="",ylab="Global Active Power (kilowatts)"))
dev.copy(png, file = "plot2.png")
dev.off()
