
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

