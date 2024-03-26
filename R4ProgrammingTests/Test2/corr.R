#Write a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. A prototype of this function follows

#solution 1
corr <- function(directory, threshold = 0){
    fileNames <- list.files(directory, full.names = TRUE)
    #here we make sure the dat list is a vector and with numeric values. 
    dat <- vector(mode="numeric", length = 0)
    #we should use 1:length() here, with length() only, it's not working.
    for(i in 1:length(fileNames)){
      eachfile <- read.csv(fileNames[i])
      complCases <- sum(complete.cases(eachfile))
       if (complCases>threshold){
        dat[i] <- cor(eachfile$sulfate,eachfile$nitrate, use = "complete.obs")
      }
    }
    return(dat[!is.na(dat)])#Although complete.obs above has selected the complete cases, but there are some files without any values(all are NA), will return NA in the cor analysis, so the result should remove it anyway. 
    
}

cr <- corr("specdata",150)
head(cr)
summary(cr)

cr <- corr("specdata",400)
head(cr)
summary(cr)


cr <- corr("specdata",5000)
head(cr)
summary(cr)
length(cr)


cr <- corr("specdata")                
cr <- sort(cr)   
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)


cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)


cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))

