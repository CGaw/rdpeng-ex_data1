#using mydata1 which is filtered 2 day data see main.R for code
plot2 <- function() {
  par(new=F)
  par(mfrow=c(1,1))
  plot(as.numeric(mydata1$Global_active_power),main="Global Active Power",type="l", ylab="Global Active Power(kilowatts)",xlab="",axes=FALSE)
  axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
  axis(2,at=c(0,2,4,6))
  box(lty = 1, col = 'black')
  dev.copy(png, file="plot2.png", width=480, height=480)
  dev.off()
}
plot2()