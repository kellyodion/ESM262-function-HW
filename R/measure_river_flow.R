#' measure_river_flow
#'
#' Estimates High Sierra river flow based on mean annual precipitation between 1895-2019
#' @param precip data frame with columns Date, Value, Anomaly
#' @author Andrew Paterson and Kelly Odion
#' @example count_cow_deaths(precip)
#' @return Returns a list containing,
#' \describe{
#'  \item{riverflow}{data frame containing mean river flow for the given year}

measure_river_flow = function(precip) {

  riverflow <- data %>%
    dplyr::mutate(river_flow = Value*1000) %>%
    group_by(year)

  return(list(table = riverflow))
}
