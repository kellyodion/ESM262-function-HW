context("test-find_precip_anom")

source("R/find_precip_anom.R")

library(testthat)


test_that("shows_min", {
  test_data =
    data.frame(
      Date = c(1:4),
      Value = c(1:4),
      Anomaly = c(1:4)
    )

  expect_true(as.integer(find_precip_anom(test_data)$min_precip) == 1)

}
)
