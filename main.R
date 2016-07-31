main <- function() {
  ##check if datda file exists, if not download it
  if(!file.exists("household_power_consumption.txt")) {
    temp <- tempfile()
    download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
    file <- unzip(temp)
    unlink(temp)
  }
  ##reading data from file
  mydata<-read.csv("household_power_consumption.txt",stringsAsFactors=FALSE,sep=";")
  ##good<-as.Date(mydata[,1],"%d/%m/%Y")>=as.Date("2007/02/01","%Y/%m/%d") && as.Date(mydata[,1],"%d/%m/%Y")<=as.Date("2007/02/02","%Y/%m/%d")
  good<-as.Date(mydata$Date,"%d/%m/%Y") %in% c(as.Date("01/02/2007","%d/%m/%Y"),as.Date("02/02/2007","%d/%m/%Y"))
  mydata1<-mydata[good,]
}
main()