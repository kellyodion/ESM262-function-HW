
find_anom = function(temp) {

  max_anom_temp = max(temp$Anomaly)
  min_anom_temp = min(temp$Anomaly)


  return(list(temps_min = min_anom_temp,
             temps_max = max_anom_temp,
             ))

}

