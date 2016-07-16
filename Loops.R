#practicing "if" and "while" statements - conditionals

large_data <- 50

while(large_data > 35) {
  print("The data is pretty large.")
  if(large_data > 45) {
  print("This data might be too large.")
  large_data <- large_data - 15
  }
  else {
    print("The data is a good size.")
    break
  }
}

#why isn't this working? I keep seeing plus signs on the left instead of the > sign

#practicing "for" loops

practice <- matrix(data=1:6, nrow=2, ncol=3)
print(practice)


#version 1
for (p in practice) {
  print(p)
}

#version 2
for (i in 1:length(practice)) {
  print(practice[[i]])
}

#Hi Michael, i'm writing the code exactly as I learned on DataCamp but none of it is working because for some reason, I keep getting the plus signs..do you know what it could be?