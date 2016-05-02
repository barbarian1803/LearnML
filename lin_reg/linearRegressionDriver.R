source("lin_reg/linearRegressionLibrary.R")

#tes linear regression
datapoint <- read.table("lin_reg/ex1data1.txt",header=FALSE,sep=",")
datapoint <- PreProcess(datapoint,c())


theta <- c(0,0)
alpha <- 0.01
iter <- 5000

theta <- GradientDescent(datapoint,variable,y,theta,alpha,iter)
CalculateCost(datapoint,variable,y,theta)
lm(V2~V1,datapoint)
theta

#tes multivariate linear regression
datapoint <- read.table("lin_reg/ex1data2.txt",header=FALSE,sep=",")
datapoint <- PreProcess(datapoint,c("V1","V3"))

theta <- c(0,0,0)
alpha <- 0.01
iter <- 20000
variable <- c("V0","V1","V2")
y <- "V3"
theta <- GradientDescent(datapoint,variable,y,theta,alpha,iter)
theta
CalculateCost(datapoint,c("V0","V1","V2"),"V3",theta)
lm(V3~V1+V2,datapoint)
theta





install.packages("ISLR")


fix("Boston")

lm.fit <- lm(medv~lstat,data=Boston)
summary.lm.fit<-summary(lm.fit)
summary.lm.fit$coefficients[,1]

