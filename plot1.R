#using mydata1 which is filtered 2 day data see main.R for code
plot1 <- function() {
  par(new=F)
  par(mfrow=c(1,1))
  hist(as.numeric(mydata1$Global_active_power),breaks=12,col="red",main="Global Active Power", xlab="Global Active Power(kilowatts)")
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
}
plot1()