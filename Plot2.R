#plot 2

png(filename = 'Plot2.png')

Target$DateTime<-strptime(paste(Target$Date,Target$Time),format = '%d/%m/%Y %H:%M:%S')
class(Target$DateTime)

plot(x=Target$DateTime,y = Target$Global_active_power,type='l',ylab='Global Active power(Kw)',xlab='')
dev.off()