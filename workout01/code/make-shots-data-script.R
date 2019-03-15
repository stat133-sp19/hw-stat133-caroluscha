andre <- read.csv("../data/andre-iguodala.csv")
dray <- read.csv("../data/draymond-green.csv")
kevin <-  read.csv("../data/kevin-durant.csv")
klay <- read.csv("../data/klay-thompson.csv")
steph <- read.csv("../data/stephen-curry.csv")

#adding name column to each dataset
andre$name <- "Andre Iguodala"
dray$name <- "Draymond Green"
kevin$name <- "Kevin Durant"
klay$name <- "Klay Thompson"
steph$name <- "Stephen Curry"

#changing y to shot_yes and n to shot_no in all datasets
library(tidyverse)
andre <- andre %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'y', 'shot_yes' 
    ))
dray <- dray %>% 
  mutate(
  shot_made_flag = str_replace(
    shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
  shot_made_flag = str_replace(
    shot_made_flag, 'y', 'shot_yes' 
  ))

kevin <- kevin %>% 
  mutate(
  shot_made_flag = str_replace(
    shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
  shot_made_flag = str_replace(
    shot_made_flag, 'y', 'shot_yes' 
  ))

klay <- klay %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'y', 'shot_yes' 
    ))

steph <- steph %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'n', 'shot_no')) %>% 
  mutate(
    shot_made_flag = str_replace(
      shot_made_flag, 'y', 'shot_yes' 
    ))

#adding minute column to all datasets
andre$minutes <- (andre$period * 12) - andre$minutes_remaining
dray$minutes <- (dray$period * 12) - dray$minutes_remaining
kevin$minutes <- (kevin$period * 12) - kevin$minutes_remaining
klay$minutes <- (klay$period * 12) - klay$minutes_remaining
steph$minutes <- (steph$period * 12) - steph$minutes_remaining

#summary output for all datasets
sink(file = "../output/andre-iguodala-summary.txt")
summary(andre)
sink()

sink(file = "../output/draymond-green-summary.txt")
summary(dray)
sink()

sink(file = "../output/kevin-durant-summary.txt")
summary(kevin)
sink()

sink(file = "../output/klay-thompson-summary.txt")
summary(klay)
sink()

sink(file = "../output/stephen-curry-summary.txt")
summary(steph)
sink()

#rbind() into a single data frame
shots_data <- rbind(andre, dray, kevin, klay, steph)

#export shots_data to csv file
write.csv(shots_data, file = "../data/shots-data.csv")

#sink shots_data to summary text file
sink(file = "../output/shots-data-summary.txt")
summary(shots_data)
sink()


