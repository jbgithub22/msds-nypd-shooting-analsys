library(forcats)
library(dplyr)

ggplot(ds %>% filter(!is.na(LOCATION_DESC) & !is.null(LOCATION_DESC)), aes(x = fct_infreq(LOCATION_DESC))) +
      geom_bar(fill = "purple") +
      theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
      labs(title = "Bar Plot of Incidents by Location Description",
           x = "Location",
           y = "Number of Incidents")

