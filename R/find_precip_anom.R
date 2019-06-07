find_precip_anom = function(precip) {


  max_anom_precip = max(precip$Anomaly)
  min_anom_precip = min(precip$Anomaly)


  return(list(precip_min = min_anom_precip,
              precip_max = max_anom_precip
  ))

}
