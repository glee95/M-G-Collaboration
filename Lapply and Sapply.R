#using the collapse= " " (sep="" does similar thing) argument inside of the paste arguement tells R that you want a space in between the elements of the character vector
#Remember that for the c() function, you can add in a second element by just putting a comma and then the second element
#remember that paste is bringing it all together

#Now, learning lapply() and sapply()
  #powerful tool for Split-Apply-Combine strategy in data analysis. HUH?
  #each of these apply functions will SPLIT up some data into smaller pieces, APPLY a function to each piece and COMBINE the results

#the argument head, has you see the beginning of dataset.
#then to get dimension, use dim(whatever)

#the lapply() function takes a list as input, applies a function to each element, then returns a list of the same length as the original one
#examples, if you want to apply the class() function and see what class it is, just type lapply(the column of the dataset, class)
# the l in lapply stands for LIST
#change from list to a character vector since list is only necessary when you have a lot of different classes of data.
  #to do this, just type as.character("name")

#sapply() --> simplify
#$ is to replace or extract parts
#function unique() gives returns vector with all duplicate elements REMOVED

#always remember tha anonymous functions(ones you create) are very useful!