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



