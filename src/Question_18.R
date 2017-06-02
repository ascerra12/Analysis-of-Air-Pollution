setwd("C:/Users/Adam/Desktop/Data Science Capstone/Assignment3/specdata")
getwd()

	data <- read.csv("226.csv")

	data <- na.omit(data)
	sdata<- data$sulfate
	sdata
	
	str(sdata, na.rm=T)

	plot(sdata)

	confidence <- matrix(length(sdata), ncol=2)

	stdev <- sd(sdata)
	n <- length(sdata)

	se_sdata <- stdev / sqrt(n)

	stdev
	n
	se_sdata
	
	#Lower bound
	confidence[i, 1] <- sdata[i] - 2*se_sdata 
	#Upper bound
	confidence[i, 2] <- sdata[i] + 2*se_sdata 
	
	confidence

	points(x=sdata, y=sdata, col="red", cex=2)
	segments(x0=sdata, x1=sdata, y0= confidence[,1],y1=confidence[,2],
			col="red",lwd=3)