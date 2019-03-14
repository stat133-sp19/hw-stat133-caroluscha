andre <- read.csv("../data/andre-iguodala.csv")
dray <- read.csv("../data/draymond-green.csv")
kevin <-  read.csv("../data/kevin-durant.csv")
klay <- read.csv("../data/klay-thompson.csv")
steph <- read.csv("../data/stephen-curry.csv")

#adding name column to each dataset
andre$name <- "Andre Iguodala"
dray$name <- "Graymond Green"
kevin$name <- "Kevin Durant"
klay$name <- "Klay Thompson"
steph$anme <- "Stephen Curry"

#changing y to shot_yes and n to shot_no in all datasets
library(tidyverse)
andre %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'y', 'shot_yes' 
    ))
dray %>% 
  mutate(
  shot_made_flag = str_replace(
    shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
  shot_made_flag = str_replace(
    shot_made_flag, 'y', 'shot_yes' 
  ))

kevin %>% 
  mutate(
  shot_made_flag = str_replace(
    shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
  shot_made_flag = str_replace(
    shot_made_flag, 'y', 'shot_yes' 
  ))

klay %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'y', 'shot_yes' 
    ))

steph %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'y', 'shot_yes' 
    ))

#adding minute column to all datasets

