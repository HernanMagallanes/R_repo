library(tidyverse)

df <- read_csv("data/murders.csv")

df <- df %>% 
  mutate(region = factor(region),
         rate = total/ population *10^5)

save(df, file="rda/murders.rda")
