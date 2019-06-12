library(testthat)

context("test-find_anom")

test_that("find_anom_works",
  {temp_data = as.data.frame(cbind(Date = c("2000", "2001", "2002", "2003"), Location = c("Brisbane", "Brisbane", "Brisbane", "Brisbane"),
                                               Anomaly=rep(1, times=4)))




    expect_that(find_anom(temp_data, plot_out=TRUE)$min_temp$find_anom, equals(1))
  })



