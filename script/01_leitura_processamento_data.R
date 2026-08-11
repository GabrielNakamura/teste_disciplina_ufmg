# leitura de dado
library(here)


# dado bruto 
data_penguins <- 
  read.csv(file = here("data", "raw", "data_raw_penguins.csv"))

colnames(data_penguins)

data_penguins$bill_length_mm

# processar dado bruto
data_penguins_processed <- data_penguins[, -1]

data_penguins_processed2 <- data_penguins_processed[, -2]

write.csv(x = data_penguins_processed, 
          file = here("data", "processed", "data_penguins_processed.csv")
          )
