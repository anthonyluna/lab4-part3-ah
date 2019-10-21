#------------------------------------------------------- 
# Title: Part Three of the Lab 
# Author: Anthony Luna  
# Date: 2019-10-21 
#-------------------------------------------------------


library(tidyverse)
library(janitor)
library(here)

#------------------------------------------------------- 
# Read in the data 
#  
#-------------------------------------------------------
  

db <- read_csv(here("data","disease_burden.csv")) %>% 
  janitor::clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)

#------------------------------------------------------- 
#  Manipulate the data
#-------------------------------------------------------
  
db_sub <- db %>% 
  filter(country_name %in% c("United States",
                             "Japan",
                             "Afghanistan",
                             "Somalia")) %>% 
  filter(age_group == "0-6 days", sex == "Both")


#------------------------------------------------------- 
# Create a basic line graph 
#-------------------------------------------------------
  
ggplot(data = db_sub, aes(x = year, y = deaths_per_100k)) +
  geom_line(aes(color = country_name))