setwd("C:/Users/Adam/Desktop/Data Science Capstone/Assignment3")
getwd()
#function smean
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
	data_subset = na.omit(data_subset)
	observations = observations + nrow(data_subset)
	total = total + sum(data_subset$sulfate)		
	min(data_subset$sulfate)
	
	return(total/observations)	
	
	
 }
	result <- vector("numeric", 332L)
		for(i in 1:332){
			result[i] <- smean("specdata",i)
		}
		min(result, na.rm=TRUE)
		which.min(result)
		max(result,na.rm=TRUE)
		which.max(result)
		mean(result, na.rm=TRUE)
		result[63]


		
	





