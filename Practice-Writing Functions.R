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
}
#why isn't this working? hmm...