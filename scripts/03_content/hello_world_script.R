# Load packages
library(EVR628tools)
library(tidyverse)

# Load data
data("data_lionfish")

# Create a simple plot
ggplot(data_lionfish,
       aes(x = total_length_mm, y = total_weight_gr, color = "green")) +
  geom_point() +
  facet_wrap(~site)

p <- ggplot(data_lionfish,
       aes(x = total_length_mm, y = total_weight_gr, color = "green")) +
  geom_point() +
  facet_wrap(~site)

?data

# Save plot
ggsave(plot = p, filename = "results/figures/first_plot.png")

