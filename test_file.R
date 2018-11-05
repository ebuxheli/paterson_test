# initializing libraries
library(shiny)
library(tidyverse)
library(readxl)
library(readr)
library(fs)

# reading in the file
wine <- read_excel("Summary_of_NZ_Wines.xlsx")

# changing names
names(wine) <- c("Catergory", paste0("y", 2009:2018))
write_rds(wine, "nz_wine.rds")

