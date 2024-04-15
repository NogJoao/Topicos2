options(scipen = 999999)
r = 1:40
A = 1
vCubo = (2*A)^r
vEsfera = (pi^(r/2))/(gamma(r/2 + 1))*A^r
Prop = 1-vEsfera/vCubo
# 
library(ggplot2)

data = data.frame(n = r, Prop = Prop)
ggplot(data, aes(x = r, y = Prop)) +
  geom_line() +
  geom_line(data = data.frame(x = c(34, 34),y = c(0, 1)), aes(x = x, y = y), 
            color = "blue") +
  geom_text(aes(x = 34, y = 0.5,label = "r = 34            "), 
            color = "blue", hjust = 1) +
  scale_x_continuous(breaks = seq(0, 40, 5)) +
  labs(x = "Dimensão r",
       y = "Proporção estudada") + 
  theme_classic()