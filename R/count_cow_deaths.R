#' count_cow_deaths
#'
#' Quantifies the number and value of cow deaths based on mean annual temperature between 1895-2019
#' @param temp data frame with columns Date, Value, Anomaly
#' @author Andrew Paterson and Kelly Odion
#' @example count_cow_deaths(temp)
#' @return Returns a list containing,
#' \describe{
#'  \item{cows_df}{the number of cow deaths and their cost to farmers}


count_cow_deaths = function(temp) {


  cows_df <- temp %>%
    dplyr::mutate(Value = mean_temp,
                  Date = year
                  ) %>%
    mutate(cow_deaths = case_when(mean_temp >= 50 ~ mean_temp*100,
                                     mean_temp < 40 ~ 0)) %>%
    group_by(year) %>%
    summarise(cow_mortality = sum(hospital_bill, na.rm = TRUE)) %>%
    as.numeric()

  return(list(table = cows_df))

}

### No applicable method for mutate to an object of class numeric
