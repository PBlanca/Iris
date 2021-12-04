#########################
# Loading Iris dataframe
#########################

library(tidyverse)
library(RCurl)
iris <- read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/master/iris.csv") )
