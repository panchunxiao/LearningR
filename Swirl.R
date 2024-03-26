library(swirl)
ls()
rm(list=ls())
##logic
swirl()
#The `|` version of OR evaluates| OR across an entire vector, while the `||` version of OR only evaluates the first | member of a vector.

TRUE|c(TRUE,FALSE,FALSE)
TRUE||c(TRUE,FALSE,FALSE)

6 != 10 && FALSE && 1 >= 2
TRUE || 5 < 9.3 || FALSE

5>8||6!=8&&4>3.9

4!=4.0

# You should also be aware of the xor() function, which takes two arguments. 
# The xor() function stands for exclusive OR. If one argument evaluates to TRUE and one argument evaluates to FALSE, 
# then this function will return TRUE, otherwise it will return FALSE. Try out the xor() function by typing: xor(5 == 6, !FALSE)
# xor指 其中一个为真就返回真，其他都是假，真假--真，真真--假，假假--假
xor(5==6,!FALSE) 

ints <- sample(10) #random sampling of integers from 1 to 10 without replacement.
ints >5
which(ints>7)

any(ints<0)
all(ints>0)


##Functions
Sys.Date()
mean(c(2,4,5))

above10 <- function(x){
  use <- x>10
  x[use]
}

x1 <- c(1,10,29,48,20,4)
above10(x1)


