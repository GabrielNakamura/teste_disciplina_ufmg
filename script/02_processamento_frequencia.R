##===========================================================================##
## Disciplina: Ciência aberta e reprodutibilidade computacional 
##
## Autor: Átila Duretti           Data: 13/08/2026
##===========================================================================#

## Importando dados processados pelo Victor ontem
data <- read.csv(file = here::here('data', 'processed', 'data_penguins_processed.csv'))

## Contando machos e fêmeas de cada espécie por ano  
soma <- (table(data$species, data$sex, data$year))

## Salvando matriz abelha x essência para as análises 
 write.csv(soma, file = here::here('data', 'processed', 'data_penguins_sex.csv'))
