#' Give a user some praise
#'
#' @description This function gives the user a positive affirmation, because
#' they deserve it!
#'
#' @param user_name The name of a user as a character vector
#'
#' @return The `user_name` with a  positive affirmation prepended to it.
#'
#' @examples
#'
#'
#' praise("Stuart")
#' praise("Priya")
#'
#' @export
praise <- function(user_name) {

  char_count <- nchar(user_name)
  nusers <- length(user_name)

  stopifnot(
    char_count > 0,
    nusers > 0
  )

  stringr::str_c(affirmation(), ", ", user_name, "!")
}
