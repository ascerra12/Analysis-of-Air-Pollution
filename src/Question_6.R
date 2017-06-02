setwd("C:/Users/Adam/Desktop/Data Science Capstone/Assignment3/specdata")
getwd()

Sdata1 <- read.csv("226.csv")
Sdata2 <- read.csv("233.csv")
Sdata3 <- read.csv("063.csv")

Sdata1 <- na.omit(Sdata1)
Sdata2 <- na.omit(Sdata2)
Sdata3 <- na.omit(Sdata3)

Sdata_subset <- data.frame()
Sdata_subset <- rbind(Sdata1,Sdata2,Sdata3)
Sdata_subset <- (Sdata_subset$nitrate)

Ndata1 <- read.csv("332.csv")
Ndata2 <- read.csv("029.csv")
Ndata3 <- read.csv("180.csv")

Ndata1 <- na.omit(Ndata1)
Ndata2 <- na.omit(Ndata2)
Ndata3 <- na.omit(Ndata3)

Ndata_subset <- data.frame()
Ndata_subset <- rbind(Ndata1,Ndata2,Ndata3)
Ndata_subset <- (Ndata_subset$nitrate)

alldata_subset <- data.frame()
alldata_subset <- rbind(Ndata1,Ndata2,Ndata3,Sdata1,Sdata2,Sdata3)

alldata_subset.b <- boxplot(alldata_subset)
alldata_subset.b$stats

alldata_subset.b$stats[3]
pairs(alldata_subset[,2:3],freq=F)