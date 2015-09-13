feb2007Data <- function (feb2007) {
projwd <- "C:/Users/Jays/Documents/DataScience/4_ExploratoryDataAnalysis/1_CourseProject/Dataset/exdata-data-household_power_consumption"
setwd(projwd)
file <- "household_power_consumption.csv"
fullFile <- read.csv(file=file, header=TRUE, sep=";")

  #coerce the date field
  fullFile$Date <- as.character(fullFile$Date)
  fullFile$Date <- strptime(fullFile$Date, "%d/%m/%Y") 


  #dates needing to be read
  first <- "2007-02-01"
  second <- "2007-02-02"

#subset the fullfile down to only the dates needed for analysis
feb2007 <- fullFile[(fullFile$Date == first | fullFile$Date == second),]
#remove fullFile from working memory
remove(fullFile)

#coerce the time field
feb2007$Time <- as.character(feb2007$Time)
dT <- paste(as.character(feb2007$Date), feb2007$Time, sep=" ")
dT1 <- strptime(dT,format="%Y-%m-%d %H:%M:%S")
feb2007$Time <- dT1
#feb2007$Time <- strftime(feb2007$Time, "%T")


#coerce other fields
for (col in 3:9){
  feb2007[,col]=as.numeric(as.character(feb2007[,col]))
}

return(feb2007)
}


