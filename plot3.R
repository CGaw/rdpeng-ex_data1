plot3 <- function() {
  #using mydata1 which is filtered 2 day data see main.R for code
  par(new=F)
  par(mfrow=c(1,1))
  plot(1:nrow(mydata1),as.numeric(mydata1$Sub_metering_1),main="", ylab="Energy sub metering",xlab="",type="l",col="black",axes=FALSE)
  par(new=T)
  plot(as.numeric(mydata1$Sub_metering_2),col="red",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
  par(new=T)
  plot(as.numeric(mydata1$Sub_metering_3),col="blue",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
  axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
  axis(2, at = c(0,10,20,30),labels = c("0","10","20","30"))
  legend("topright",legend=c("sub-metering1","sub-metering2","sub-metering3"),col=c("black","red","blue"),lty=c(1,1), lwd = 1)
  box(lty = 1, col = 'black')
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
}
plot3()