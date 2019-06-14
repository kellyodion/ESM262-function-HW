context("test-crop_loss")


source("R/crop_loss.R")

library(testthat)

test_that("ratio_is_positive", {
  precip =
    data.frame(
      Date = c(2002,2003, 2004, 2005),
      Precipitation = c(1:4),
      Precipitation_Anomaly = c(1:4))
  temp = data.frame(
    Date = c(2002, 2003, 2004, 2005),
    Temperature = c(1:4),
    Temperature_Anomaly = c(1:4))


  expect_true(as.integer(crop_loss(data_frame)$drought_ratio) > 0)

}
)



