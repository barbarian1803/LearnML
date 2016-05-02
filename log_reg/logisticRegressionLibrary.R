dataset <- read.table("log_reg/dataset.csv",header=TRUE,sep=",")
dataset$V0 <- rep(1,length(dataset))
training <- as.matrix(dataset[1:300,c(5,2,3,4,1)])
test <- as.matrix(dataset[301:400,c(5,2,3,4,1)])

h <- function(theta,X){
  X%*%theta
}


GradientDescent <- function(){
  
}

