# leitura de dado
library(here)
library(dplyr)
library(ggplot2)


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

data2<-data_penguins_processed2%>%
  filter(bill_depth_mm!="NA")%>%
  group_by(species)%>%
  summarise(media=mean(bill_depth_mm))

p1<-ggplot(data = data2, aes(x = species, y = media))+
  geom_point()+theme_classic(base_size = 14)+
  labs(x="Species", y= "Mean bill depth (mm)")


p1  

#massa em funcao dos sexos dos pinguins
data3<-data_penguins_processed2%>%
  filter(body_mass_g!="NA")%>%
  filter(sex!="NA")%>%
  group_by(sex)%>%
  summarise(media=mean(body_mass_g))

p3<-ggplot(data = data3, aes(x = sex, y = media))+
  geom_point()+theme_classic(base_size = 14)+
  labs(x="Sex", y= "Mean body mass (g)")

p3
