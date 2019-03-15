andre <- read.csv("../data/andre-iguodala.csv")
dray <- read.csv("../data/draymond-green.csv")
kevin <-  read.csv("../data/kevin-durant.csv")
klay <- read.csv("../data/klay-thompson.csv")
steph <- read.csv("../data/stephen-curry.csv")

library(ggplot2)
library(grid)
library(jpeg)

court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc")
)

#' @title Plot shot chart
#' @description use ggplot to make the shot_chart scatterplots
#' @param data1 data of the player
#' @param title title of the plot
shot_chart_plot <- function(data1, title) {
  ggplot(data = data1) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle(title) +
  theme_minimal()
  }

pdf(file = "../images/andre-iguodala-shot-chart.pdf", height = 5, width = 6.5)
shot_chart_plot(
  data1 = andre,
  title = "Shot Chart: Andre Iguodala (2016 season)")
dev.off

pdf(file = "../images/draymond-green-shot-chart.pdf", height = 5, width = 6.5)
shots_plot = shot_chart_plot(
  data1 = dray,
  title = "Shot Chart: Draymond Green (2016 season)"
  )
dev.off

pdf(file = "../images/kevin-durant-shot-chart.pdf", height = 5, width = 6.5)
shots_plot = shot_chart_plot(
  data1 = kevin,
  title = "Shot Chart: Kevin Durant (2016 season)"
  )

pdf(file = "../images/klay-thompson-shot-chart.pdf", height = 5, width = 6.5)
shots_plot = shot_chart_plot(
  data1 = klay,
  title = "Shot Chart: Klay Thompson (2016 season)"
  )
dev.off()

pdf(file = "../images/stephen-curry-shot-chart.pdf", height = 5, width = 6.5)
shots_plot = shot_chart_plot(
  data1 = steph,
  title = "Shot Chart: Stephen Curry (2016 season)"
  )
dev.off()
