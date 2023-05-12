# Code to generate .Rd data files ----

# clear workspace ----
rm(list =ls())
library(dplyr)

# save data from data-raw ----
directory <- "data-raw/"

# data incidence ----
data_inc_2001to2020_C0toC97_allageandbysex <- read.csv(paste0(directory, "Inc_data_01to20_allsites_allageandbysex.csv"))

data_inc_2001to2020_C0toC97_allandbyagesex <- read.csv(paste0(directory, "Inc_data_01to20_allsites_allandbyagesex.csv"))

data_inc_2001to2020_bysite_allandbysex <- read.csv(paste0(directory, "Inc_data_01to20_bysite_allandbysex.csv"))

data_inc_2001to2020_bysite_allandbysexandage <- read.csv(paste0(directory, "Inc_data_01to20_bysite_allandbysexandage.csv"))

# data mortality ----
data_mort_2001to2020_C0toC97_allageandbysex <- read.csv(paste0(directory, "Mort_data_01to20_allsites_allageandbysex.csv"))

data_mort_2001to2020_C0toC97_allandbyagesex <- read.csv(paste0(directory, "Mort_data_01to20_allsites_allandbyagesex.csv"))

data_mort_2001to2020_bysite_allandbysex <- read.csv(paste0(directory, "Mort_data_01to20_bysite_allandbysex.csv"))

data_mort_2001to2020_bysite_allandbysexandage <- read.csv(paste0(directory, "Mort_data_01to20_bysite_allandbysexandage.csv"))

# transfer to data folder ----

usethis::use_data(data_inc_2001to2020_C0toC97_allageandbysex,
                  data_inc_2001to2020_C0toC97_allandbyagesex,
                  data_inc_2001to2020_bysite_allandbysex,
                  data_inc_2001to2020_bysite_allandbysexandage,
                  data_mort_2001to2020_C0toC97_allageandbysex,
                  data_mort_2001to2020_C0toC97_allandbyagesex,
                  data_mort_2001to2020_bysite_allandbysex,
                  data_mort_2001to2020_bysite_allandbysexandage,
                  overwrite = TRUE)
