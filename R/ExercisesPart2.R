ExercisesPart2 <- function(option)
{
  library("nycflights13")
  library("tidyverse")
  allflights <- nycflights13::flights
  # Exercise 5.3.1 - Item 1: How could you use arrange() to sort all missing values to the start? (Hint: use is.na()):
  arrange1 <- arrange(flights, desc(is.na(dep_time)), dep_time)
  # Exercise 5.3.1 - Item 2: Sort flights to find the most delayed flights. Find the flights that left earliest:
  arrange2 <- arrange(flights, desc(dep_delay))
  arrange3 <- arrange(flights, dep_delay)
  # Exercise 5.3.1 - Item 3: Sort flights to find the fastest (highest speed) flights:
  # "Fastest flight" can be interpreted in two ways. The first as "the flight with the shortest flight time" (arrange4) and the second as "the flight with the highest average forward speed" (arrange5).
  arrange4 <- head(arrange(flights, air_time))
  arrange5 <- head(arrange(flights, desc(distance / air_time)))
  # Exercise 5.3.1 - Item 4: Which flights travelled the farthest? Which travelled the shortest?:
  arrange6 <- arrange(flights, desc(air_time))
  arrange7 <- arrange(flights, air_time)
}

