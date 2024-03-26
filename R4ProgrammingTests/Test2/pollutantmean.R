getwd()
#make sure your working directory has the right path, otherwise it cannot find your specdata
setwd("C:/Users/Chunxiao Pan/Documents/R_Tutorial/Data_Science_Foundations_using_R_Specialization/LearningR/R4ProgrammingTests/Test2")
list.files("specdata")

#solution 1
pollutantmean <- function(directory, pollutant, id=1:332){
  #file is assign all the names of the csv file
  file <- list.files(directory, pattern = "*.csv", full.names = TRUE)
  class(file)
  dat <- data.frame()
  #combine the data into one file with class of data.frame
  for (i in id){
    dat <- rbind(dat, read.csv(file[i]))
  }

  mean(dat[,pollutant],na.rm=TRUE)
 
}


pollutantmean("specdata","sulfate",1:10)
pollutantmean("specdata","nitrate",70:72)
pollutantmean("specdata","nitrate",23)
pollutantmean("specdata", "sulfate", 1:10)
