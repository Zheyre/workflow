library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, fill = cut)) +
  geom_bar(width = 0.75, show.legend = FALSE) +
  scale_fill_viridis_d(option = "D", end = 0.85) +
  labs(
    title = "A closer look at diamond cuts",
    subtitle = "Most diamonds in this data set are classified as Ideal",
    x = "Cut quality",
    y = "Number of diamonds"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 18),
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
