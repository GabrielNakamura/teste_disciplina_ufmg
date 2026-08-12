# leitura de dado
library(here)
library(dplyr)


# dado bruto 
data_penguins <- 
  read.csv(file = here::here("data", "raw", "data_raw_penguins.csv"))

# processar dado bruto
data_penguins_processed <- data_penguins[, -1]

data_penguins_processed2 <- data_penguins_processed[, -2]

write.csv(x = data_penguins_processed, 
          file = here::here("data", 
                            "processed",
                            "data_penguins_processed.csv")
          )

filtereddata<-data_penguins_processed2%>%
  filter(species=="Adelie")
