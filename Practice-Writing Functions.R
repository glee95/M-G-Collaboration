#take a first name and last name and combine them together
first_name <- 'Grace '
last_name <- 'Lee'
first_name + last_name
#that doesn't work...so for these character vectors, you use %
'%p%' <- function(x,y) { paste(x,y, sep=" ")}
  #why do we need quotes around the %p%?
  #the paste function puts together 2 character functions
first_name %p% last_name

#make a function that divides the sum of a set of numbers by the standard deviation of the numbers.
sum_divide_sd <- function(x) {
  first_add <- sum(x)
  second_sd <- sd(x)
  third_divide <- first_add/second_sd
  # Within a function, you can print things to the console.  This can help you
  # see what's going on...(I typically remove these after I'm done debugging)
  print(first_add)
  print(second_sd)
  print(third_divide)
  # Looks like everything is working, it's just not giving you what you want.  Why?
  # Functions have to return things - and they can only return one "object" (ish)
  # .. here we're binding the results into one object
  results <- c(first_add, second_sd, third_divide)
  names(results) <- c("sum", "sd", "sum/sd")
  return(results)
  # Note, I didn't have to use "return", I could've just typed "results", but it's better to use
  # "return"
}
#why isn't this working? hmm...

data <- rnorm(10, 2, .1)
sum_divide_sd(data)
my_results <- sum_divide_sd(data)
my_results
my_results[1]

#trying it again
round_2 <- function(x){sum(x)/sd(x)}
round_2(1:5)
print(round_2)

data <- rnorm(10,2,2)
round_2(data)
my_results <- round_2(data)
print(my_results)
