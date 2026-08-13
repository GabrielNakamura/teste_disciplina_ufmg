# dado bruto 
data_penguins <- 
read.csv(file = here::here("data", "raw", "data_raw_penguins.csv"))

#removendo NAs da tabela
data_penguins=data_penguins[c(-4,-272,-9,-10,-11,-12,-48,-179,-219,-257,-269),]

summary(data_penguins)

#gráfico de pinguins por ilha
barplot(table(data_penguins$island),
        main = "Número de pinguins por ilha",
        xlab = "Ilha", ylab = "Contagem",
        col = c("lightblue", "lightgreen", "lightcoral"))

#gráfico pinguins por espécie
barplot(table(data_penguins$species),
        main = "Número de pinguins por espécie",
        xlab = "espécie", ylab = "Contagem",
        col = c("lightblue", "lightgreen", "lightcoral"))

#pinguins por sexo
barplot(table(data_penguins$sex),
        main = "Número de pinguins por sexo",
        xlab = "espécie", ylab = "Contagem",
        col = c("lightblue", "lightgreen", "lightcoral"))
