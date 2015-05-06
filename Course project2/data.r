# Load the required libraries
library(plyr)
library(dplyr)
library(ggplot2)
library(grid)

suppressPackageStartupMessages({
library(plyr)
library(dplyr)
library(ggplot2)
library(grid)

})

## Change working directory & ensure the file "summarySCC_PM25.rds" is there.
## Read the file in to NEI
NEI <- readRDS("summarySCC_PM25.rds")

# Read the Source Classification Code in to SCC
SCC <- readRDS("Source_Classification_Code.rds")