


# define PRS depending on S3 or S4 object


s3 <- list(name = "John", age = 21, PRS = 3.5)
class(s3) <- "student"
s3


patient <- function(n, a, p) {
  if(g>4 || g<0) stop("PRS must be between 0 and 4")
  value <- list(name = n, age = a, PRS = p)
  attr(value, "class") <- "student" 
  value
}

s3.2 <- student("Paul", 26, 3)
s3.2


prs.patient(s3)


setClass("patient", slots=list(name="character", age="numeric", PRS="numeric"))

s4 <- new("patient",name="John",age=21,PRS=3.5)
s4

# How to access and modify slot?

lss4(s4)
lss3(s3)

s4@name
s4@PRS <- 3.7


# Modifying slots using slot() function
slot(s4,"name")

slot(s4,"name") <- "Paul"
slot(s4,"name")


# Methods and Generic Functions

showMethods()

lsS4(print)
lsS4(show)

print(s4)
show(s4)



# Test Case Example



# if (!requireNamespace("BiocManager", quietly=TRUE))
#   install.packages("BiocManager")
#
# BiocManager::install("airway")
# BiocManager::install("summarizedexperiment")

library(SummarizedExperiment)
library(airway)
data(airway, package="airway")
se <- airway
se

lsS4(se)
se@assays

assays(se)$count
rowRanges(se)



















