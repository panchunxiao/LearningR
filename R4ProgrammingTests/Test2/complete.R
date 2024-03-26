complete <- function(directory,id=1:332){
    file <- list.files(directory, full.names = TRUE) 
    dat <- data.frame()
    for(i in id){
      eachFile <- read.csv(file[i])
      nobs <- sum(complete.cases(eachFile))
      dat <- rbind(dat,c(i,nobs))
    }
    colnames(dat) <- c("id","nobs")
    dat
}

complete("specdata",30:25)

cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

cc <- complete("specdata", 54)
print(cc$nobs)

RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
