png(filename = 'Plot4.png')
par(mfrow=c(2,2))


plot(x=Target$DateTime,y = Target$Global_active_power,type='l',ylab='Global Active power(Kw)',xlab='')

plot(x=Target$DateTime,y = Target$Voltage,type='l',ylab='Global Active power(Kw)',xlab='Datetime')

plot(x=Target$DateTime,y = Target$Sub_metering_1,type='l',ylab='Energy Sub metering',xlab='')
lines(x=Target$DateTime,y = Target$Sub_metering_2,type='l',col='red')
lines(x=Target$DateTime,y = Target$Sub_metering_3,type='l',col='blue')
legend('topright',legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col=c('black',"red",'blue') )

plot(x=Target$DateTime,y = Target$Global_reactive_power,type='l',ylab='Global Active power(Kw)',xlab='Datetime')
dev.off()