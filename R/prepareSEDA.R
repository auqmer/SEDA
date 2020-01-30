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
seda <- read.csv("Data/SEDA_District.csv", header = TRUE)

# Convert seda to data.table.
seda <- setDT(seda)

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
label(seda) <- as.list(lbs$label[match(names(seda), lbs$variable)])

####### Clean variables #######


seda$gshi <- as.character(seda$gshi)
seda$gshi[seda$gshi == "Pre-Kindergarten"] <- "0"
seda$gshi <- as.numeric(seda$gshi)

# Rename variable
names(seda)[names(seda) == "stateabb"] <- "state"


# Create data.table for Alabama data.
al_seda <- seda[state == "AL"]
