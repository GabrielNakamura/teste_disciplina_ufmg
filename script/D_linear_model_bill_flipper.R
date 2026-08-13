
# Script para rodar modelo com penguins -----------------------------------

data_penguins <- 
  read.csv(here::here("data", 
                      "processed",
                      "data_penguins_processed.csv")
           )


# Modelo linear com bill e flipper length ---------------------------------

lm_bill_flipper <- 
  lm(bill_length_mm ~ flipper_length_mm, 
     data = data_penguins)


# Salva modelo no formato rds ---------------------------------------------

saveRDS(lm_bill_flipper, here::here("output",
                                    "lm_bill_flipper.rds")
        )
