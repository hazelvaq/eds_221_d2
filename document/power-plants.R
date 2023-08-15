library(tidyverse)
library(here)
library(janitor)

## Some filtering form dplyr function in tidyverse
#rows kept if it matches the condition we set

plants <- read_csv(here::here("data","power_plants.csv")) %>% clean_names() 

alabama_plants <- plants %>% 
  filter(state_name == "Alabama")

alabama_plot <- ggplot(data = alabama_plants, aes(x = install_mw, y = total_mw)) + geom_point()

ggsave(filename = here("figures","alabama_plot.png"))