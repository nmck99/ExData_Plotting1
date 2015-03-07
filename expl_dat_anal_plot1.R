setwd("C:/Users/Public/Documents/R")
df <- read.table("./data/household_power_consumption.txt",sep=";",dec=".",header=TRUE,stringsAsFactors=FALSE,na.strings="?",colClasses=c(rep("character",2), rep("numeric",7)))
df2<-df[df$Date=="1/2/2007" | df$Date=="2/2/2007" ,]
df2$DateTime<-strptime(paste(df2$Date,df2$Time),"%d/%m/%Y %H:%M:%S")
hist(df2$Global_active_power,breaks=12,col="red",xlab="Global Active Power (kilowatts)",main = paste("Global Active Power"))
dev.copy(png, file = "plot1.png")
dev.off() 
