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

