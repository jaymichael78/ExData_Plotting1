#Create Plot 3
#call library
library(datasets)
#Set working directory
dir <- "C:/Users/Jays/Documents/DataScience/4_ExploratoryDataAnalysis/1_CourseProject/ExData_Plotting1"
setwd(dir)

#source function
source("ExData_Plotting1//readDataFunction/feb2007.R")
#call data in function
feb2007 <- feb2007Data(feb2007)
remove(feb2007Data)

copyDir <- "ExData_Plotting1//pngFiles"
setwd(copyDir)

#Create Plot
plot(feb2007$Time,feb2007$Sub_metering_1,ylab="Energy sub metering",type="l",xlab="")
plot.xy(xy.coords(feb2007$Time,feb2007$Sub_metering_2),type="l",col="red")
plot.xy(xy.coords(feb2007$Time,feb2007$Sub_metering_3),type="l",col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"), xjust=0, cex=0.75)

#Make png file
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
