
# Graphs with penguins ----------------------------------------------------

library(palmerpenguins)
penguins <- penguins
library(ggplot2)

graph_first <- ggplot(data = penguins,
       mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = species))+
  geom_point()+
  theme_classic(base_size = 18) +
  geom_smooth(method = "lm") +
  labs(x= "Bill length (mm)", y = "Bill depth (mm)")

graph_first
