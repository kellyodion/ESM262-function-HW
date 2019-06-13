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

crop_loss = function(precip, temp) {

  data_frame = merge(precip, temp, by = "Date") %>%
    rename(Precipitation = "Value.x", Precipitation_Anomaly = "Anomaly.x", Temperature = "Value.y", Temperature_Anomaly = "Anomaly.y")
  drought_ratio = min(data_frame$Precipitation/data_frame$Temperature)
 wet_ratio = max(data_frame$Precipitation/data_frame$Temperature)

  return(list(drought = drought_ratio,
              wet = wet_ratio))

}

catch_fish <- function(price, catch, plot = F) {

  most_common_fish = list(colnames(catch), rownames(catch)[apply(catch, 2, which.max)])
  total_revenue = sum(price[,1]* catch)
  loc_revenue = price[,1] * catch
  loc_revenue = colSums(loc_revenue)
  loc_revenue_df = data.frame(loc_revenue)
  loc_revenue_df$location = c(rownames(loc_revenue_df))
  if (plot) {                                           #create plot if user selects true
    lb = sprintf("Total Revenue is $%d", total_revenue) #display total revenue
    p = ggplot(loc_revenue_df, aes(location, loc_revenue, fill=location))+
      geom_col()+
      labs(y="Revenue ($)")+annotate("text", x=2, y=30000, label=lb, col="black") +
      theme_classic() +
      scale_fill_manual(values = c("slategrey","skyblue", "#00AFBB", "cornflowerblue", "navy"))
  }
  else p=NULL #no plot if user selects false
  return(list(MostFrequent = most_common_fish, TotalRevenue = total_revenue, Revenue_by_Location = loc_revenue_df, plot = p)) #return specified outputs
}
