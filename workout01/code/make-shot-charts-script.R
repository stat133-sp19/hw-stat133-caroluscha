
library(readr)
library(ggplot2)
library(grid)
library(jpeg)
library(dbplyr)
library(plotly)

shots_data <- read.csv("../data/shots-data.csv")
andre <- shots_data[shots_data$name == "Andre Iguodala",]
dray <- shots_data[shots_data$name == "Draymond Green",]
kevin <- shots_data[shots_data$name == "Kevin Durant",]
klay <- shots_data[shots_data$name == "Klay Thompson",]
steph <- shots_data[shots_data$name == "Stephen Curry",]

court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc")
)

andre_plot <- ggplot(data = andre) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Andre Iguodala (2016 season)") +
  theme_minimal()
print(andre_plot)

dray_plot <- ggplot(data = dray) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Draymond Green (2016 season)") +
  theme_minimal()

kevin_plot <- ggplot(data = kevin) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Kevin Durant (2016 season)") +
  theme_minimal()

klay_plot <- ggplot(data = klay) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Klay Thompson (2016 season)") +
  theme_minimal()

steph_plot <- ggplot(data = steph) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: Stephen Curry (2016 season)") +
  theme_minimal()

shots_plots <- ggplot(data = shots_data) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle("Shot Chart: (2016 season)") +
  theme_minimal()

#saving pdfs of each players plots of shots made
pdf(file = "../images/andre-iguodala-shot-chart.pdf", height = 5, width = 6.5)
print(andre_plot)
dev.off()

pdf(file = "../images/draymond-green-shot-chart.pdf", height = 5, width = 6.5)
dray_plot
dev.off()

pdf(file = "../images/kevin-durant-shot-chart.pdf", height = 5, width = 6.5)
kevin_plot
dev.off()

pdf(file = "../images/klay-thompson-shot-chart.pdf", height = 5, width = 6.5)
klay_plot
dev.off()

pdf(file = "../images/stephen-curry-shot-chart.pdf", height = 5, width = 6.5)
steph_plot
dev.off()



pdf(file = "../images/gsw-shot-charts.pdf", height = 5, width = 6.5)
png(filename = "../images/gsw-shot-charts.png", units = "in", width = 8, height = 7, res = 300)
shots_plots + facet_wrap(~ name)
dev.off()
