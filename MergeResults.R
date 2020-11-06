## first let's clear out the our environment
#rm(list=ls()) 

## set the working directory to the folder where the our csv files have been unzipped. You can get your current workspace with getwd() function.  

#setwd("C:/Users/yourusername/Desktop/whatever")


csvfiles <- list.files()

#we can count csv files as len function.




## we need to create a data frame for the merge others
mergedcsv <- data.frame()

## a for loop in order to read all csv files 
for(i in  1:length(csvfiles)){
  # now if your csv files seperated as semicolon, you need to change sep="," as sep=';'. Morover, if your csv files
  #have same template header must be T, otherwise change Header as F.
  df <- read.csv(csvfiles[i] , header = T , stringsAsFactors = F , sep="," , na.strings=c("", "NA"))
  
  #n
  mergedcsv <- rbind(mergedcsv , df)
}

# result
View(mergedcsv)

#export the result to the current workspace
write.csv(mergedcsv,file='whatever.csv',row.names = FALSE)