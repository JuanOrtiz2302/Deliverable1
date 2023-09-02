ExercisesPart1 <- function(option)
{
library("nycflights13")
library("tidyverse")
allflights <- nycflights13::flights
# Exercise 5.2.4 - Item 1: Find all flights that:
# 1. Had an arrival delay of two or more hours:
filter1 <- filter(flights, arr_delay >= 120)
# 2. Flew to Houston (IAH or HOU):
filter2 <- filter(flights, dest %in% c("IAH", "HOU"))
# 3. Were operated by United, American, or Delta:
airlines <- airlines
filter3 <- filter(flights, carrier %in% c("AA", "DL", "UA"))
# 4. Departed in summer (July, August, and September):
filter4 <- filter(flights, month >= 7, month <= 9)
# 5. Arrived more than two hours late, but didn't leave late:
filter5 <- filter(flights, arr_delay > 120, dep_delay <= 0)
# 6. Were delayed by at least an hour, but made up over 30 minutes in flight:
filter6 <- filter(flights, dep_delay >= 60, dep_delay - arr_delay > 30)
# 7. Departed between midnight and 6am (inclusive):
filter7 <- filter(flights, dep_time <= 600 | dep_time == 2400)
# Exercise 5.2.4 - Item 2: Another useful dplyr filtering helper is between(). What does it do? Can you use it to simplify the code needed to answer the previous challenges?:
# Answer: Yes, because the expression between(x, left, right) is equivalent to x >= left & x <= right. So, of the answers in the previous exercise, we could simplify the statement of departed in summer (month >= 7 & month <= 9) using the between() function.
filter8 <- filter(flights, between(month, 7, 9))
}

