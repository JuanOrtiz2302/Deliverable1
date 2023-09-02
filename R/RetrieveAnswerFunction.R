#' Deliverable1
#'
#' Function to choose any of the exercises previously done in class
#'
#' @param option (Allows to select any of the marked exercises from 1 to 6)
#' @return The solution of the selected exercise
#' @export
#' @import nycflights13
#' @import tidyverse
#' @import knitr
#'
#' @examples
#' Retrieve_answer(1)
#' Retrieve_answer(5)

Retrieve_answer <- function(option)
{
  if (option == 1){
    return(ExercisesPart1())
  }

  else if (option == 2){
    return(ExercisesPart2())
  }

  else if (option == 3){
    return(ExercisesPart3())
  }

  else if (option == 4){
    return(ExercisesPart4())
  }

  else if (option == 5){
    return(ExercisesPart5())
  }

  else if (option == 6){
    return(ExercisesPart6())
  }

  else
  {
    print("Invalid option. Please select an option between 1 and 6")
  }
}
