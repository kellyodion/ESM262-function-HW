
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



  return(list(min_temp = min_precip,
              cool_year = dry_year,
              max_temp = max_precip,
              warm_year = wet_year
  ))

}

