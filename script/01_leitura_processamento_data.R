# leitura de dado
library(here)
# caminho absoluto
# data_penguins <- read.csv("/Users/gabrielnakamura/Downloads/Projeto_exemplo/data/raw/data_raw_penguins.csv")

# caminho relativo ancorado pelo Rproject
# data_penguins <- read.csv("data/raw/data_raw_penguins.csv")

# dado bruto 
data_penguins <- 
  read.csv(file = here("data", "raw", "data_raw_penguins.csv"))

colnames(data_penguins)

data_penguins$bill_length_mm

# processar dado bruto
data_penguins_processed <- data_penguins[, -1]

write.csv(x = data_penguins_processed, 
          file = here("data", "processed", "data_penguins_processed.csv")
          )
