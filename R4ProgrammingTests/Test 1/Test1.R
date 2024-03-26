
library(readr)
hw1_data <- read_csv("hw1_data.csv")
View(hw1_data)
nrow(hw1_data)#view the numbers of rows
hw1_data[1:2,]
summary(hw1_data)
hw1_data[152:153,]
tail(hw1_data,n=2)#tail select and view the values at the bottom
hw1_data$Ozone[47]
sum(is.na(hw1_data$Ozone))#count the numbers of NA value in Ozone
#筛选横列的内容其中Ozone>31&Temp>90, 最后不能漏了逗号，，说明竖列column的内容不变
ozonecomplete <- hw1_data$Ozone[!is.na(hw1_data$Ozone)]
mean(ozonecomplete)
a <- hw1_data[hw1_data[,"Ozone"]>31 & hw1_data[,"Temp"]>90,]
b <- a$Solar.R
c <- b[!is.na(b)]#exclude NA, and make a new list, is.na() produce logical values
mean(c)

d <- hw1_data[hw1_data[,"Month"]==6,]
Temp6 <- d$Temp[!is.na(d$Temp)]
mean(Temp6)

e <- hw1_data[hw1_data$Month==5,]
summary(e)
