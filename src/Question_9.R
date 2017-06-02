setwd("C:/Users/Adam/Desktop/Data Science Capstone/Assignment3/")
getwd()

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
