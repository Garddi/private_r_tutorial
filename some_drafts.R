ser_acc <- httr::GET("http://api.kolada.se/v2/data/kpi/N00303/year/2022")


library(jsonlite)
library(httr)
library(tidyverse)


test <- fromJSON(rawToChar(ser_acc$content))$values

sider <- bind_rows(test$values)

ser_acc_final <- test %>% 
  select(-values) %>% 
  cbind(sider)



###


test <- httr::content(ser_acc)$values %>% 
  bind_rows()



lapply(potcab$parties, FUN = function(x){
  
  rel_string <- as.character(x)
  
  
  
  
})