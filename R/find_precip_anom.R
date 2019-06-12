#' find_precip_anom
#'
#' Find the years with the highest and lowest precipitation anomalies between 1895-2019
#' @param precip data frame with columns Date, Value, Anomaly
#' @author Andrew Paterson and Kelly Odion
#' @example find_anom(precip)
#' @return Returns a list containing,
#' \describe{
#'  \item{min_precip}{the lowest precipitation anomaly}
#'  \item{dry_year}{Year associated with the lowest precipitation anomaly
#'  \item{min_precip}{the highest precipitation anomaly}
#'  \item{warm_year}{year associated with the highest precipitation anomaly}
#'  }


find_precip_anom = function(precip) {

  min_precip = min(precip$Anomaly)
  dry_year = precip %>%
    filter(Anomaly == min_precip) %>%
    select(Date) %>%
    as.numeric()
  max_precip = max(precip$Anomaly)
  wet_year = precip %>%
    filter(Anomaly == max_precip) %>%
    select(Date) %>%
    as.numeric()



  return(list(min_precip = min_precip,
              dry_year = dry_year,
              max_precip = max_precip,
              wet_year = wet_year
  ))

}

