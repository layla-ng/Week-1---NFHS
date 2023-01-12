library(tidyverse)
library(haven)

nfhs <- read_dta("IAHR52FL.dta")

Alumni <- read.csv("IAHR52FL.dta")

summary(Alumni)

hh <- select(nfhs, hhid:hv208)

january <- filter(nfhs, hv006 == 1)


nfhs <- rename(nfhs, survey_month = hv006)


nfhs <- mutate(nfhs, rural = hv025 == 2)


filter("hv006" == 1) %>%            
  
  
  nfhs <- mutate(nfhs, rural = hv025 == 2)


ggplot(data = nfhs)+
  geom_histogram(mapping = aes(x=hv009), binwidth = 1) +
  xlab("Number of household members")



nfhs <- read_dta("IAHR52FL.dta")


new_df <- nfhs            
  select(hhid:hv208)
  rename(hv006 = survey_month)
  filter(survey_month == 1) 
  mutate(rural = hv025 == 2)



new_df %>%
  group_by(hv025) %>%
  summarise(
    count = n()
  )



box_plot(hv009 ~ hv025)
  plot("x", data = hv009, "y", data = hv025,  
    x = "Number of household", y = "area")

boxplot(hv009 ~ hv026,
  data = nfhs, 
  xlab = "Rural Area", 
  ylab = "NUmber of household ")
  
