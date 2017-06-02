setwd("C:/Users/Adam/Desktop/Data Science Capstone/Assignment3")
getwd()
psum <- function(directory, ID) {

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
	summary(data_subset)
}
IDnum <- for (i in 1:332) {
	print (i)
	
print(psum("specdata", i))
}
