## first let's clear out the our environment
#rm(list=ls()) 

## set the working directory to the folder where the our csv files have been unzipped. You can get your current workspace with getwd() function.
#In order to avoid errors, you need to set a workspace that has only your CSV files.

#setwd("C:/Users/yourusername/Desktop/whatever")


csvfiles <- list.files()


## we need to create a data frame for the merge others
mergedcsv <- data.frame()

## a for loop in order to read all csv files 
for(i in  1:length(csvfiles)){
  # now if your CSV files separated  as a semicolon, you need to change sep="," as sep=';'. Moreover, if your csv files
  #have the same template, header must be T; otherwise, change header as F.
  df <- read.csv(csvfiles[i] , header = T , stringsAsFactors = F , sep="," , na.strings=c("", "NA"))
  
 
  mergedcsv <- rbind(mergedcsv , df)
}

# result
View(mergedcsv)

#export the result to the current workspace
write.csv(mergedcsv,file='whatever.csv',row.names = FALSE)
