# 1. Initialize Your Package Skeleton
install.packages("devtools")
library(devtools)
create("Friedman")

#2. Edit the DESCRIPTION File
#Package: visuals
#Title: Making Data Visualization Easy
#Version: 0.0.0.9000
#Authors@R:person("Morgan", "Mascarenas", email = "mm44@usf.edu", role = c("aut", "cre"))
#Description: Provides functions for creating data visualizations,including bar plots, 
#             line graphs, scatterplots, histograms, and boxplots.This package 
#             is to make creating graphs and visualizations easier.
#Depends: R (>= 3.1.2)
#Imports:ggplot2
#License: CC0
#LazyData: true
#Config/roxygen2/version: 8.1.1
#Encoding: UTF-8
#Roxygen: list(markdown = TRUE)

# 3. Verify and Build
check("visuals")
build("visuals")

# blog link : morganlefey.com/assignemtn10-lis4370
