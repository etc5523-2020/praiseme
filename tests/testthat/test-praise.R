test_that("Input user names", {
  res <- praise(c("Stuart", "Emi"))
  expect_length(res, 2)
  expect_error(praise(user_name = NULL))
  expect_error(praise(user_name = ""))
  expect_error(praise(c("", "Emi", "Stuart")))
  expect_error(praise(character(0L)))
})

test_that("Valid affirmations", {
  valid_message <- c("Well done",
                     "Great job",
                     "Good job",
                     "Excellent work")
  for (i in 1:10) {
    res <- praise("Name")
    affirmation <- unlist(strsplit(res, ","))[1]
    expect_true(affirmation %in% valid_message)
  }

})
