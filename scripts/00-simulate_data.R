#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
# [...UPDATE THIS...]

#### Simulate data ####
# [...ADD CODE HERE...]

library(opendatatoronto)
library(tidyverse)
library(dplyr)#inside tidyverse
set.seed(304)
start_date<-as.Date('2023-01-01')
end_date<-as.Date('2024-9-20')
number_of_date=100
data<-tibble(date=as.Date(runif(n=number_of_date),min=as.numeric(start_date),max=as.numeric(end_date),origin='1970-01-01'), number_of_marriage=rpois(n=number_of_date,lambda=10))
#Test data
data<-read_csv("data/raw_data/simulateed.csv")
data$number_of_marriage |> min() <=0
#Test for 
all(is.na(data$number_of_marriage))



