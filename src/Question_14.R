setwd("C:/Users/Adam/Desktop/Data Science Capstone/Assignment3/specdata")
getwd()

data <- read.csv("029.csv")

data <- na.omit(data)

names(data)

#[1] "Date"    "sulfate" "nitrate" "ID"  

	plot(sulfate~nitrate,data)
#calculate mean sulfate concentration
	smean <-mean(data$sulfate,na.rm=TRUE)

	abline(h=smean)

#use lm to fit a regression line through data
	model1 <-lm (sulfate~nitrate,data)
	model1
	
	par(mfrow=c(3,2))
	plot(sulfate~nitrate,data)
	abline(h=smean)
	abline(model1,col="red")
	
	plot(model1)

	termplot(model1)

	summary(model1)
	