ExercisesPart3 <- function(option)
{
  library("nycflights13")
  library("tidyverse")
  allflights <- nycflights13::flights
  # Exercise 5.4.1 - Item 2: What happens if you include the name of a variable multiple times in a select() call?:
  # Answer: The select() call ignores the duplication. So, any duplicated variables are only included once, in the first location they appear.
  select1 <- select(flights, year, month, day, year, year)
  # Exercise 5.4.1 - Item 3: What does the any_of() function do? Why might it be helpful in conjunction with this vector? vars <- c("year", "month", "day", "dep_delay", "arr_delay"):
  vars <- c("year", "month", "day", "dep_delay", "arr_delay")
  # Answer: The any_of() function selects variables with a character vector rather than unquoted variable name arguments. This function is useful because it is easier to programmatically generate character vectors with variable names than to generate unquoted variable names, which are easier to type.
  select2 <- select(flights, any_of(vars))
  # Exercise 5.4.1 - Item 4: Does the result of running the following code surprise you? How do the select helpers deal with case by default? How can you change that default? select(flights, contains("TIME")):
  item4 <- select(flights, contains("TIME"))
  # Answer: It's surprising since, the default behavior for contains() is to ignore case. This is important because users searching for variable names probably have a better sense of the letters in the variable than their capitalization. On the other hand, some of database engines have case insensitive column names, so making functions that match variable names case insensitive by default will make the behavior of select() consistent regardless of whether the table is stored as an R data frame or in a database. Finally, to change the behavior you need to add the argument ignore.case = FALSE.
  select3 <- select(flights, contains("TIME", ignore.case = FALSE))
}

