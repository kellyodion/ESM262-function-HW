#' measure_river_flow
#'
#' Estimates a mean High Sierra river flow for a year or range of years based on mean annual precipitation between 1895-2019
#' @param precip data frame with columns Date, Value, Anomaly
#' @param year the specified year or years to return an average
#' @author Andrew Paterson and Kelly Odion
#' @example count_cow_deaths(precip)
#' @return Returns a list containing,
#' \describe{
#'  \item{riverflow}{data frame containing mean river flow for the given years}

measure_river_flow = function(precip, year) {

  riverflow <- precip %>%
    dplyr::mutate(river_flow = Value*7500) %>%
    filter(Date %in% year)

  x <- mean(riverflow$river_flow)

  return(x)
}

### dplyr in function. with expect that seems like it has to be an exact match. Test needs to be looking for a data frame if you are producing a data frame
