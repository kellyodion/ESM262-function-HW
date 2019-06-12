#' crop_loss
#'
#' Find the amount of crops lost in a given year between 1895-2019
#' @param temp data frame with columns Date, Value, Anomaly
#' @param precip data frame with columns Date, Value, Anomaly
#' @author Andrew Paterson and Kelly Odion
#' @example crop_loss(temp, precip)
#' @return Returns a list containing,
#' \describe{
#'  \item{drought}{the lowest ratio between precipitation and temperature}
#'  \item{wet}{the highest ratio between precipitation and temperature}

crop_loss = function(temp, precip) {

  data_frame = merge(precip, temp, by = "Date") %>%
    rename(Precipitation = "Value.x", Precipitation_Anomaly = "Anomaly.x", Temperature = "Value.y", Temperature_Anomaly = "Anomaly.y")
  drought_ratio = min(data_frame$Precipitation/data_frame$Temperature)
  wet_ratio = max(data_frame$Precipitation/data_frame$Temperature)

  return(list(drought = drought_ratio,
              wet = wet_ratio))

}
