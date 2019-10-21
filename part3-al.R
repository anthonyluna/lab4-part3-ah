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
#  
#  
#-------------------------------------------------------
  