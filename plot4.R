plot4 <- function() {
  #using mydata1 which is filtered 2 day data see main.R for code
  par(new=F)
  par(mfrow=c(2,2))
  #Plot1: Global Active Power
  plot(as.numeric(mydata1$Global_active_power),main ="Global Active Power",type="l", ylab="Global Active Power(kilowatts)",xlab="",axes=FALSE)
  axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
  axis(2,at=c(0,2,4,6))
  box(lty = 1, col = 'black')
  
  #Plot2: voltage
  plot(as.numeric(mydata1$Voltage),main="Voltage",type="l", ylab="Voltage",xlab="",axes=FALSE)
  axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
  axis(2,at=c(234,238,240,242),labels=c("234","238","240","242"))
  box(lty = 1, col = 'black')
  
  #plot3: Energy metering
  plot(1:nrow(mydata1),as.numeric(mydata1$Sub_metering_1),main="Energy metering", ylab="Energy sub metering",xlab="",type="l",col="black",axes=FALSE)
  par(new=T)
  plot(as.numeric(mydata1$Sub_metering_2),col="red",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
  par(new=T)
  plot(as.numeric(mydata1$Sub_metering_3),col="blue",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
  axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
  axis(2, at = c(0,10,20,30),labels = c("0","10","20","30"))
  legend("topright",legend=c("sub-metering1","sub-metering2","sub-metering3"),col=c("black","red","blue"),lty=c(1,1),bty="n", cex=.5)
  box(lty = 1, col = 'black')
  par(new=F)
  
  #plot4: Global Reactive Power
  plot(as.numeric(mydata1$Global_reactive_power),main ="Global Reactive Power",type="l", ylab="Global_reactive_power",xlab="",axes=FALSE)
  axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
  axis(2,at=c(0.1,0.2,0.3,0.4),c("0.1","0.2","0.3","0.4"))
  box(lty = 1, col = 'black')
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
}
plot4()