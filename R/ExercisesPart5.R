ExercisesPart5 <- function(option)
{
  library("nycflights13")
  library("tidyverse")
  allflights <- nycflights13::flights
  # Exercise 5.6.7 - Item 1: Brainstorm at least 5 different ways to assess the typical delay characteristics of a group of flights. Consider the following scenarios:
  # - A flight is 15 minutes early 50% of the time, and 15 minutes late 50% of the time.
  # - A flight is always 10 minutes late.
  # - A flight is 30 minutes early 50% of the time, and 30 minutes late 50% of the time.
  # - 99% of the time a flight is on time. 1% of the time it's 2 hours late.
  # Which is more important: arrival delay or departure delay?:
  # Answer: 1. What this question gets at is a fundamental question of data analysis: the cost function. As analysts, the reason we are interested in flight delay because it is costly to passengers. But it is worth thinking carefully about how it is costly and use that information in ranking and measuring these scenarios.
  # 2. In many scenarios, arrival delay is more important. In most cases, being arriving late is more costly to the passenger since it could disrupt the next stages of their travel, such as connecting flights or scheduled meetings.
  # 3. If a departure is delayed without affecting the arrival time, this delay will not have those affects plans nor does it affect the total time spent traveling.
  # 4. This delay could be beneficial, if less time is spent in the cramped confines of the airplane itself, or a negative, if that delayed time is still spent in the cramped confines of the airplane on the runway.
  # 5. Variation in arrival time is worse than consistency. If a flight is always 30 minutes late and that delay is known, then it is as if the arrival time is that delayed time. The traveler could easily plan for this. But higher variation in flight times makes it harder to plan.
}
