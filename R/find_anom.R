#' find_anom
#'
#' Find the years with the highest and lowest temperature anomalies between 1895-2019
#' @param temp data frame with columns Date, Value, Anomaly
#' @author Andrew Paterson and Kelly Odion
#' @example find_anom(temp)
#' @return Returns a list containing,
#' \describe{
#'  \item{min_temp}{thelowest temperature anomaly}
#'  \item{cool_year}{Year associated with the lowest temperature anomaly
#'  \item{min_temp}{the highest temperature anomaly}
#'  \item{warm_year}{year associated with the highest temperature anomaly}
#'  }


find_anom = function(temp) {

  min_temp = min(temp$Anomaly)
  cool_year = temp %>%
    filter(Anomaly == min_temp) %>%
    select(Date) %>%
    as.numeric()
  max_temp = max(temp$Anomaly)
  warm_year = temp %>%
    filter(Anomaly == max_temp) %>%
    select(Date) %>%
  as.numeric()



  return(list(min_temp = min_temp,
            cool_year = cool_year,
             max_temp = max_temp,
             warm_year = warm_year
             ))

}

