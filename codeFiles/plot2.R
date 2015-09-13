#Create Plot 2
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
plot(feb2007$Time,feb2007$Global_active_power,ylab="Global Active Power (kilowatts)",type="l",xlab="")

#Make png file
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
