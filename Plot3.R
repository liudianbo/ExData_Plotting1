#Plot 3
png(filename = 'Plot3.png')
plot(x=Target$DateTime,y = Target$Sub_metering_1,type='l',ylab='Energy Sub metering',xlab='')
lines(x=Target$DateTime,y = Target$Sub_metering_2,type='l',col='red')
lines(x=Target$DateTime,y = Target$Sub_metering_3,type='l',col='blue')
legend('topright',legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col=c('black',"red",'blue') )
dev.off()