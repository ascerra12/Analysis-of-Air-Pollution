setwd("C:/Users/Adam/Desktop/Data Science Capstone/Assignment3/")
getwd()

nmin <- function(directory, ID) {

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
	min <- min(data_subset$nitrate,is.na=TRUE)
}
	min_nitrate <- vector("numeric", 332L) 
		for (i in 1:332) {
			min_nitrate[i] <- nmin("specdata",i)
}

	min_nitrate[1:332]
	which.min(min_nitrate)
	


smin <- function(directory, ID) {

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
	
	min <- min(data_subset$sulfate,is.na=TRUE)
}
	
	min_sulfate <- vector("numeric", 332L) 
		for (i in 1:332) {
			min_sulfate[i] <- smin("specdata",i)
}


	min_nitrate[1:332]
	which.min(min_nitrate)
	min_sulfate[1:332]
	which.min(min_sulfate)

cor(min_nitrate, min_sulfate, method="pearson")
