find_anom = function(temp, precip) {

  data_frame = merge(precip, temp, by = "Date") %>%
    rename(Precipitation = "Value.x", Precipitation_Anomaly = "Anomaly.x", Temperature = "Value.y", Temperature_Anomaly = "Anomaly.y")
  drought_ratio = min(data_frame$Precipitation/data_frame$Temperature)
  wet_ratio = max(data_frame$Precipitation/data_frame$Temperature)

  return(list(drought = drought_ratio,
              wet = wet_ratio))

}
