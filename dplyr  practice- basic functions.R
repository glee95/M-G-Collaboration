# hflights is preloaded

*********SELECT()**************
  #takes info out of what's already in data

# Print out a tbl containing just ArrDelay and DepDelay
select(hflights, ArrDelay, DepDelay)

# Print out a tbl as described in the second instruction, using both helper functions and variable names
select(hflights,contains("Unique"),contains("Num"), starts_with("Cancel"))

# Print out a tbl as described in the third instruction, using only helper functions.
select(hflights,contains("Time"), contains("Delay"))

#comparing regular R with dyplyr. you get the same thing but it's a lot of simpler
ex1r <- hflights[c("TaxiIn", "TaxiOut", "Distance")]
ex1d <- select(hflights, TaxiIn, TaxiOut, Distance)

*********MUTATE()**********
  #uses data to build new data such as adding a sum column or something
  
# Add the new variable ActualGroundTime to a copy of hflights and save the result as g1.
  g1 <- mutate(hflights, ActualGroundTime = ActualElapsedTime - AirTime)
# Add a second variable loss_ratio to the dataset: m1
m1 <- mutate(hflights, loss = ArrDelay - DepDelay, loss_ratio = loss/DepDelay)

# Add the three variables as described in the third instruction: m2
m2 <- mutate(hflights, TotalTaxi = TaxiIn + TaxiOut, ActualGroundTime = ActualElapsedTime - AirTime, Diff = TotalTaxi - ActualGroundTime)


********FILTER()*************
# All flights that traveled 3000 miles or more
  filter(hflights, Distance >= 3000)

# All flights flown by JetBlue, Southwest, or Delta
filter(hflights, UniqueCarrier %in% c("JetBlue", "Southwest", "Delta"))

# All flights where taxiing took longer than flying
filter(hflights, TaxiIn + TaxiOut > AirTime)


# All flights that departed before 5am or arrived after 10pm
filter(hflights, DepTime < 500 | ArrTime > 2200)

# All flights that departed late but arrived ahead of schedule
filter(hflights, DepDelay > 0, ArrDelay < 0)

# All flights that were cancelled after being delayed
filter(hflights, Cancelled > 0 ,DepDelay > 0)

#how many weekend flights flew a distance of more than 1000 miles but had a total taxiing time below 15 minutes?

hflights <- select(hflights, DayOfWeek, Distance, TaxiIn, TaxiOut)
hflights <- mutate(hflights, Taxiing = TaxiIn + TaxiOut)
filter(hflights, DayOfWeek >= 6, Distance > 1000, Taxiing < 15)
#and then this tells you how many flights!

********ARRANGE()**********
# Arrange according to carrier and decreasing departure delays
  arrange(hflights, UniqueCarrier, desc(DepDelay))

# Arrange flights by total delay (normal order).
arrange(hflights, DepDelay + ArrDelay)
