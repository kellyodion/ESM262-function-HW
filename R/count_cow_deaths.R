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
    mutate(cow_deaths = case_when(Value >= 50 ~ Value*100,
                                  Value < 50 ~ Value*20),
           lost_revenue = cow_deaths*4000) %>%
    group_by(Date) %>%
    summarise(cow_mortality = sum(cow_deaths, na.rm = TRUE),
              lost_revenue = sum(lost_revenue, na.rm = TRUE)) %>%
    ungroup()

  return(cows_df)

}

