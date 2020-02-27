#**************************************************************************
# Title: prepareSEDA.R
# Author: William Murrah
# Description:
# Created: Monday, 21 October 2019
# R version: R version 3.6.1 (2019-07-05)
# Directory: C:/Users/wmm0017/Projects/QMER/SEDA
#**************************************************************************
# packages used -----------------------------------------------------------
library(data.table)
library(readxl)
library(Hmisc)
al_seda <- read.csv("Data/SEDA_AL_District.csv", header = TRUE)

# Convert seda to data.table.
al_seda <- setDT(al_seda)

# create variable-label pairs.
lbcov <- read_xlsx("Documents/Codebooks/seda_codebook_cov_geodist_v30.xlsx", 
                       sheet = "Sheet1", col_names = FALSE, range = "A1:B62")
lbcw <- read_xlsx("Documents/Codebooks/seda_codebook_crosswalk_v30.xlsx", 
                  sheet = "SEDA_crosswalk", col_names = FALSE, range = "A4:B38")
lbgd <- read_xlsx("Documents/Codebooks/seda_codebook_geodist_v30.xlsx",
                  sheet = "Coding", col_names = FALSE, range = "B2:c48")

names(lbcov) <- names(lbcw) <- names(lbgd) <- c("variable","label")

# Stack label data frames and remove duplicates.
lbs <- data.frame(rbind(lbcov, lbcw, lbgd))
lbs <- lbs[!duplicated(lbs$variable), ]

# Attach labels to variables using label data frame.
label(al_seda) <- as.list(lbs$label[match(names(al_seda), lbs$variable)])

####### Clean variables #######


al_seda$gshi <- as.character(al_seda$gshi)
al_seda$gshi[al_seda$gshi == "Pre-Kindergarten"] <- "0"
al_seda$gshi <- as.numeric(al_seda$gshi)

# Rename variable
names(al_seda)[names(al_seda) == "stateabb"] <- "state"



