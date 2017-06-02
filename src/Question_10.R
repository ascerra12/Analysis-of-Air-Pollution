setwd("C:/Users/Adam/Desktop/Data Science Capstone/Assignment3/")
getwd()

nmax <- function(directory, ID) {

	list.filenames <- list.files(directory, full.names = TRUE)
	data <- data.frame()
	for (i in ID) {
		if(i<10){
		data <- rbind(data, read.csv(list.filenames[i]))
}
		else if (i>=10 & i<100) {
		data <- rbind(data, read.csv(list.filenames[i]))
}
		else{
		data <- rbind(data, read.csv(list.filenames[i]))
}
}	
	data_subset <- data[which(data[, "ID"] == ID),]
	data_subset <- na.omit(data_subset) 
	max <- max(data_subset$nitrate,is.na=TRUE)
}
	max_nitrate <- vector("numeric", 332L) 
		for (i in 1:332) {
			max_nitrate[i] <- nmax("specdata",i)
}

	max_nitrate[1:332]
	which.max(max_nitrate)
	


smax <- function(directory, ID) {

	list.filenames <- list.files(directory, full.names = TRUE)
	data <- data.frame()
	for (i in ID) {
		if(i<10){
		data <- rbind(data, read.csv(list.filenames[i]))
}
		else if (i>=10 & i<100) {
		data <- rbind(data, read.csv(list.filenames[i]))
}
		else{
		data <- rbind(data, read.csv(list.filenames[i]))
}
}	
	data_subset <- data[which(data[, "ID"] == ID),]
	data_subset <- na.omit(data_subset) 
	
	max <- max(data_subset$sulfate,is.na=TRUE)
}
	
	max_sulfate <- vector("numeric", 332L) 
		for (i in 1:332) {
			max_sulfate[i] <- smax("specdata",i)
}


	max_nitrate[1:332]
	which.max(max_nitrate)
	max_sulfate[1:332]
	which.max(max_sulfate)

cor(max_nitrate, max_sulfate, method="pearson")
	
	allmax<- vector("numeric", 664L)
		allmax[] <- c(max_nitrate,max_sulfate)
		allmax[1:664]



nmean <- function(directory, ID) {
	total = 0
	observations = 0

	list.filenames <- list.files(directory, full.names = TRUE)
	data <- data.frame()
	for (i in ID) {
		if(i<10){
		data <- rbind(data, read.csv(list.filenames[i]))
}
		else if (i>=10 & i<100) {
		data <- rbind(data, read.csv(list.filenames[i]))
}
		else{
		data <- rbind(data, read.csv(list.filenames[i]))
}
}	
	data_subset <- data[which(data[, "ID"] == ID),]
	data_subset <- na.omit(data_subset)
	observations = observations + nrow(data_subset)
	total = total + sum(data_subset$nitrate) 
	mean <- mean(data_subset$nitrate,na.rm=TRUE)

	return(total/observations)
}
	mean_nitrate <- vector("numeric", 332L) 
		for (i in 1:332) {
			mean_nitrate[i] <- nmean("specdata",i)
}
	mean_nitrate <- (mean_nitrate, na.rm=TRUE)
	mean_nitrate[1:332]

	

smean <- function(directory, ID) {
	total = 0
	observations = 0

	list.filenames <- list.files(directory, full.names = TRUE)
	data <- data.frame()
	for (i in ID) {
		if(i<10){
		data <- rbind(data, read.csv(list.filenames[i]))
}
		else if (i>=10 & i<100) {
		data <- rbind(data, read.csv(list.filenames[i]))
}
		else{
		data <- rbind(data, read.csv(list.filenames[i]))
}
}	
	data_subset <- data[which(data[, "ID"] == ID),]
	data_subset <- na.omit(data_subset) 
	observations = observations + nrow(data_subset)
	total = total + sum(data_subset$sulfate)
	mean <- mean(data_subset$sulfate,is.na=TRUE)

	return(total/observations)
}
	
	mean_sulfate <- vector("numeric", 332L) 
		for (i in 1:332) {
			mean_sulfate[i] <- smean("specdata",i)
}


	mean_nitrate[1:332]
	
	mean_sulfate[1:332]
	

cor(mean_nitrate, mean_sulfate, method="pearson",use="complete.obs")
	allmean<- vector("numeric", 664L)
		allmean[] <- c(mean_nitrate,mean_sulfate)
		allmean[1:664]
cor(allmax, allmean, method="pearson",use="complete.obs")

