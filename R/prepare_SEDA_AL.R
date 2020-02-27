#**************************************************************************
# Title: prepare_SEDA_AL.R
# Author: William Murrah
# Description:
# Created: Thursday, 27 February 2020
# R version: R version 3.6.2 (2019-12-12)
# Directory: /home/hank01/Projects/QMER/SEDA
#**************************************************************************
# packages used -----------------------------------------------------------
library(Hmisc) # for labels
library(gtools) # for quantcut
# Import data and labels --------------------------------------------------
seda_al <- read.csv("Data/SEDA_AL_District.csv", header = TRUE)
varlabs <- read.table("Data/varLabels.txt", header = TRUE, stringsAsFactors = FALSE)

# Label data
label(seda_al) <- as.list(varlabs$label[match(names(seda_al), 
                                              varlabs$variable)])

seda_al$rswhtblkQ <- quantcut(seda_al$rswhtblk, q = 4, na.rm = TRUE)
