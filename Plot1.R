#plot 1 
library(dplyr)

48*2075259*9/1e6
EleVec<-read.table(file = './exdata_data_household_power_consumption/household_power_consumption.txt',nrows =2075259,sep = ';',header = T)
head(EleVec)
object.size(EleVec)
class(EleVec$Date)

Target<-filter(.data = EleVec,Date=="1/2/2007"|Date=="2/2/2007")

png(filename = 'Plot1.png')
hist(as.numeric(as.character(Target$Global_active_power[Target$Global_active_power!='?'])),
     main='Global Active power',xlab='Global Active power(Kw)',col='red')
rug(x =as.numeric(as.character(Target$Global_active_power[Target$Global_active_power!='?'])))

dev.off()