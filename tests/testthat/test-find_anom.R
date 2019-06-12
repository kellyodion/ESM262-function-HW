library(testthat)

source("R/find_anom.R")

context("test-find_anom")

test_that("please_work", {
  test_data =
    data.frame(
      Date = c(1:4),
      Value = c(1:4),
      Anomaly = c(1:4)
    )

  expect_true(as.integer(find_anom(test_data)$max_temp) == 4)

}
)



