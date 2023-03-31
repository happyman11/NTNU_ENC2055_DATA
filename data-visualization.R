## load data
library(tidyverse)
df <- read_csv("demo_data/data-datasaurus.csv")





## df %>%
##   group_by(group) %>%
##   summarize(
##     mean_x = mean(x),
##     mean_y = mean(y),
##     std_dev_x = sd(x),
##     std_dev_y = sd(y),
##   )

ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point(alpha = .7, size = .8) +
  theme(legend.position = "none") +
  facet_wrap( ~ group, ncol = 3) +
  labs(title = "Scatter Plots of Each Group",
       x = "X Values", y = "Y Values")









library(tidyverse)

mpg 

str(mpg)
summary(mpg)

ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()



ggplot(data = mpg, aes(hwy)) + 
  geom_histogram(color='white')
ggplot(data = mpg, aes(hwy)) +
  geom_density(kernel="gaussian")



ggplot(data = mpg, aes(hwy)) +
  geom_histogram(
    color = 'white',
    fill = 'steelblue',
    alpha = 0.7,
    bins = 10
  ) +
  scale_x_continuous(breaks = seq(10, 46, 1))

ggplot(data = mpg, aes(hwy)) +
  geom_histogram(
    color = 'white',
    fill = 'steelblue',
    alpha = 0.7,
    binwidth = 2
  ) +
  scale_x_continuous(breaks = seq(10, 46, 1))

## You can check the min or max of each bin
g <- ggplot(data = mpg, aes(hwy)) +
  geom_histogram(color = "white")

## Auto-print the ggplot
g

## Checking bin interval min and max
ggplot_build(g)$data[[1]]$xmin
ggplot_build(g)$data[[1]]$xmax




ggplot(data = mpg, aes(x = class)) + 
  geom_bar()





ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() + 
  geom_smooth(method='lm', formula= y~x)

ggplot(data = mpg, aes(x = class, y = hwy)) + 
  geom_boxplot()



ggplot(data = mpg, aes(x = class, y = hwy)) +
  stat_summary(fun.data = mean_cl_boot, geom = "pointrange")

ggplot(data = mpg, aes(x = class, y = hwy)) +
  stat_summary(fun.data = mean_cl_normal, geom = "pointrange")

ggplot(data = mpg, aes(x = manufacturer, y = class)) +
  geom_count() + 
  theme(axis.text.x = element_text(angle=-90))



ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()

ggplot(data = mpg,
       aes(x = displ, y = hwy, color = drv)) +
  geom_point()

## Method 1
ggplot(data = mpg, aes(x = displ, y = hwy, color = drv)) + 
  geom_point()

## Method 2
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(color = "steelblue")

ggplot(data = mpg, aes(x = displ, y = hwy, color = drv)) + 
  geom_point(alpha = .5, size = 4)

ggplot(data = mpg, aes(x = displ, y = hwy, size = drv, color= drv)) + 
  geom_point(alpha = .5)

ggplot(data = mpg, aes(x = class, fill = class)) +
  geom_bar(color = 'white')

ggplot(data = mpg, aes(x = class, y = hwy, fill = class)) +
  geom_boxplot(color = 'black',
               size = 0.2,
               notch = TRUE)

ggplot(data = mpg, aes(x = displ, y = hwy, shape = drv)) +
  geom_point()

ggplot(data = mpg, aes(
  x = displ,
  y = hwy,
  color = drv,
  shape = drv
)) +
  geom_point()

ggplot(data = mpg, aes(x = manufacturer, y = class)) +
  geom_count() + 
  theme(axis.text.x = element_text(angle=-90))



ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(method = "lm")

## ggplot(data = mpg, aes(x = displ, y = hwy, color = drv)) +
##   geom_point() +
##   geom_smooth(method = "lm")

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(method = 'lm') +
  labs(title = "Correlation between Displacement and Highway Miles per Gallon",
       x = "Displacement",
       y = "Miles/Per Gallon")

ggplot(data = mpg, aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  labs(x = "Engine Displacement (litres)",
       y = "Highway Miles per Gallon",
       title = "Scatter Plot -- DISPL by HWY",
       color = "Drive Train Type")

ggplot(data = mpg, aes(x = cty, y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(vars(class))

## Save the ggplot2 object
graph1 <- ggplot(data = mpg, aes(x = displ, y = hwy, color = drv)) +
  geom_point(size = 3, alpha = .8) +
  labs(
    x = "Engine Displacement (litres)",
    y = "Highway Miles per Gallon",
    title = "Scatter Plot -- DISPL by HWY",
    color = "Drive Train Type"
  )

## autoprint the graph
graph1

## add theme layers
graph1 + theme_bw(base_family = "Times New Roman")
graph1 + theme_minimal()
graph1 + theme_dark()
graph1 + theme_classic()
graph1 + theme_light()

my_first_graph <-
  ggplot(data = mpg, aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  labs(x = "Engine Displacement (litres)",
       y = "Highway Miles per Gallon",
       title = "Scatter Plot -- DISPL by HWY")
class(my_first_graph) # check the class
# summary(my_first_graph) # check the properties of the graph
my_first_graph # auto-print the ggplot
ggsave(
  filename = "my_first_plot.png",
  plot = my_first_graph,
  width = 6,
  height = 6
)



iris
