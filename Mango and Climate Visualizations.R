library(tidyverse)
library(sf)

mangoNew <- read_csv("C:\\Users\\sgubb\\Downloads\\FAOSTAT_data_en_10-8-2023.csv")
mangoNew1 <- mangNew[c(10,12)] %>%
  filter(Year>1980)

mangoNew2 <- read_csv("C:\\Users\\sgubb\\Downloads\\FAOSTAT_data_en_10-9-2023.csv")
mangoNew3 <- mangoNew2[c(10,12)] %>%
  filter(Year>2002)

ggplot(mangoNew3, aes(x=Year, y=Value))+
  geom_line()+
  ggtitle("Area Harvested of Mangos, Guavas, and Mangosteens from 2002 to 2022")+
  theme_bw()+
  labs(y= "Area Harvested (ha)", x = "Year")



