# Question 1, three ways to assign values to variables
x = 4
y <- 6
assign("z",4)

## Question 2, use sum to count NA variables in a vector
vec <- rep(c(1:10, NA), 20)
sum(is.na(vec))


## Question3, show the difference between library() and require()

## this demonstration function loads the package gtools using the library command

checkOdd <- function(x){
  library(gtools)  
  ifelse(odd(x), "Odd Number", "Even Number")
}

## this function loads gtools with require

checkOdd2 <- function(x){
  require(gtools)
  ifelse(odd(x), "Odd Number", "Even Number")
}

## if the package doesn’t exist, the result is different. 
## Library throws an error; require gives a warning and error
## see following:

> checkOdd(2)
 Error in library(gtools) : there is no package called ‘gtools’ 


> checkOdd2(3)
Loading required package: gtools
Error in ifelse(odd(x), "Odd Number", "Even Number") : 
  could not find function "odd"
In addition: Warning message:
In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘gtools’
