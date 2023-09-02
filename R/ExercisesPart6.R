ExercisesPart6 <- function(option)
{
  library("nycflights13")
  library("tidyverse")
  allflights <- nycflights13::flights
  # Exercise 5.7.1 - Item 2: Which plane (tailnum) has the worst on-time record?:
  # Answer: For a more exact result, it is decided to choose the plane with the worst time record that made at least 20 flights. Through the average number of minutes late, we obtain:
  groupedmutate <- flights %>% filter(!is.na(arr_delay)) %>% group_by(tailnum) %>% summarise(arr_delay = mean(arr_delay), n = n()) %>% filter(n >= 20) %>% filter(min_rank(desc(arr_delay)) == 1)
}
