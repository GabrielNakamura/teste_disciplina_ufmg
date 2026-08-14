# Leitura de dados
penguins <- read.csv(
  "data/raw/data_raw_penguins.csv", sep = ";"
)

# Colunas que precisam existir
expected_columns <- c(
  "species",
  "island",
  "bill_length_mm",
  "bill_depth_mm",
  "flipper_length_mm",
  "body_mass_g",
  "sex",
  "year"
)

# Teste 1: colunas esperadas existem no df
stopifnot(
  all(expected_columns %in% names(penguins))
)

# Teste 2: dados não vazios, ou seja, > 0
stopifnot(
  nrow(penguins) > 0
)

# Teste 3: As espécies precisam ser informadas
stopifnot(
  !any(is.na(penguins$species))
)

# Teste 4: massa precisa ser positiva
stopifnot(
  all(
    penguins$body_mass_g >= 0 |
      is.na(penguins$body_mass_g)
  )
)

# Teste 5: tamanho do bico precisa ser positivo
stopifnot(
  all(
    penguins$bill_length_mm >= 0 |
      is.na(penguins$bill_length_mm)
  )
)

# Teste 6: profundidade do bico precisa ser positiva
stopifnot(
  all(
    penguins$bill_depth_mm >= 0 |
      is.na(penguins$bill_depth_mm)
  )
)

# Teste 7: tamanho da asa precisa ser positivo
stopifnot(
  all(
    penguins$flipper_length_mm >= 0 |
      is.na(penguins$flipper_length_mm)
  )
)

# Teste 8: categoria sexo contém valores válidos
stopifnot(
  all(
    na.omit(penguins$sex) %in% c("male", "female")
  )
)

cat("All data checks passed!\n")