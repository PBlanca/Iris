#########################
# Loading Iris Data Frame
#########################

library(tidyverse)
library(RCurl)
library(skimr)

iris <- read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/master/iris.csv") )

### Explore data

head(iris)
summary(iris)

sum(is.na(iris))
skim(iris)

# Group by species
iris %>% 
  group_by(Species) %>% 
  skim() 

### First data visualization 

petal_length_width_viz <- ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color = Species)) +
  geom_point() +
  labs(x= "Petal Length", y="Petal Width") +
  scale_color_brewer(palette="Set2")

petal_length_width_viz

sepal_length_width_viz <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color = Species)) +
  geom_point() +
  labs(x= "Sepal Length", y="Sepal Width") +
  scale_color_brewer(palette="Set2")

sepal_length_width_viz

sepal_length_viz <- ggplot(iris, aes(x=Species, y=Sepal.Length,  fill=Species)) +
  geom_boxplot(alpha=0.75) +
  labs(y = "Sepal Length") +
  theme(legend.position="none") +
  scale_fill_brewer(palette="Set2")

sepal_length_viz

sepal_width_viz <- ggplot(iris, aes(x=Species, y=Sepal.Width, fill = Species)) +
  geom_boxplot(alpha=0.75) +
  labs(y = "Sepal width") +
  theme(legend.position="none") +
  scale_fill_brewer(palette="Set2")
    
sepal_width_viz

length_petal_vs_sepal <- ggplot(iris, aes(x = Petal.Length, y=Sepal.Length, color=Species)) + 
  geom_point() +
  facet_wrap(~Species) +
  scale_color_brewer(palette="Set2")

length_petal_vs_sepal

width_petal_vs_sepal <- ggplot(iris, aes(x = Petal.Width, y=Sepal.Width, color=Species)) + 
  geom_point() +
  facet_wrap(~Species) +
  scale_color_brewer(palette="Set2")

width_petal_vs_sepal




