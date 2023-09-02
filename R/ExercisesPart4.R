ExercisesPart4 <- function(option)
{
  library("nycflights13")
  library("tidyverse")
  allflights <- nycflights13::flights
  # Exercise 5.5.2 - Item 1: Currently dep_time and sched_dep_time are convenient to look at, but hard to compute with because they're not really continuous numbers. Convert them to a more convenient representation of number of minutes since midnight:
  time2mins <- function(x) {
    (x %/% 100 * 60 + x %% 100) %% 1440
  }
  mutate1 <- mutate(flights, dep_time_mins = time2mins(dep_time), sched_dep_time_mins = time2mins(sched_dep_time))
  select4 <- select(mutate1, dep_time, dep_time_mins, sched_dep_time, sched_dep_time_mins)
  # Exercise 5.5.2 - Item 2: Compare air_time with arr_time - dep_time. What do you expect to see? What do you see? What do you need to do to fix it?:
  # Answer: I expect that air_time is the difference between the arrival (arr_time) and departure times (dep_time). In other words, air_time = arr_time - dep_time. What I can see is that air_time is not equal to arr_time - dep_time, because: 1. The flight passes midnight, so arr_time < dep_time. In these cases, the difference in airtime should be by 24 hours (1,440 minutes)
  # and 2. The flight crosses time zones, and the total air time will be off by hours (multiples of 60). All flights in flights departed from New York City and are domestic flights in the US. This means that flights will all be to the same or more westerly time zones. Given the time-zones in the US, the differences due to time-zone should be 60 minutes (Central) 120 minutes (Mountain), 180 minutes (Pacific), 240 minutes (Alaska), or 300 minutes (Hawaii). Finally, To fix these time-zone issues, I would want to convert all the times to a date-time to handle overnight flights, and from local time to a common time zone, most likely UTC, to handle flights crossing time-zones, leaning on that, the relationship between air_time, arr_time, and dep_time is air_time <= arr_time - dep_time, supposing that the time zones of arr_time and dep_time are in the same time zone.
}
