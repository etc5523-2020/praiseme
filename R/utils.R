#' Randomly selects a positive message
#'
#' @return One of "Well done", "Great job" and so on
#' @noRd
affirmation <- function() {
  message <- c("Well done", "Great job", "Good job", "Excellent work")
  sample(message, size = 1)
}
