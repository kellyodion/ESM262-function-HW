
find_anom = function(precip, temp) {

  max_anom_temp = max(temp$Anomaly)
  min_anom_temp = min(temp$Anomaly)
  max_anom_precip = max(precip$Anomaly)
  min_anom_precip = min(precip$Anomaly)


  return(list(temps_min = min_anom_temp,
             precip_min = min_anom_precip,
             temps_max = max_anom_temp,
             precip_max = max_anom_precip

             ))

}

