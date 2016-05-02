CalculateCost <- function(data,X,y,theta){
  data<-as.matrix(data)
  diff <- data[,X]%*%theta-data[,y]
  J<-0.5*mean(diff^2)
  J
}


GradientDescent <- function(data,X,y,theta,alpha,iter){
  if(length(X)!=length(theta)){
    message("Number of parameter theta must same as number of variable in X")
    return()
  }
  data<-as.matrix(data)
  for(n in 1:iter){
    diff <- data[,X]%*%theta-data[,y]
    for(i in 1:length(X)){
      theta[i]<-theta[i]-alpha*mean(diff * data[,X[i]])  
    }
  }
  round(theta,5)
}


PreProcess <- function(data,col){
  data$V0 <- rep.int(1,nrow(data))
  for(c in col){
    data[,c] <- (data[,c]-mean(data[,c]))/sd(data[,c])
  }
  data
}
