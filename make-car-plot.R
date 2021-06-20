library(tidyverse)
car_plot <- mtcars %>% 
  select(mpg, wt) %>% 
  ggplot(aes(x = wt, y = mpg))+
  geom_jitter()+
  geom_smooth(formula = y ~ x, method = "lm", se = FALSE)+
  theme_clean()+
  labs(title = "Fuel Efficiency and Weight", subtitles = "Heavier cars are less fuel efficient",
       x = "Weight (1000s of lbs)", y = "MPG", caption = "Henderson and Vellerman (1981)")
write_rds(car_plot, "car-plot.rds")
