# clearing list
rm(list = ls())

# library
library(ggplot2)
library(dtw)
library(readxl)
library(dtwclust)
library(dplyr)
library(lubridate)
library(tidyverse)

fed_data <- read_csv("fed_data.csv")
fed_data <- fed_data %>% remove_rownames %>% column_to_rownames(var="X1")
fed_data <- fed_data[,-1]


fed_data_transpose <- read_csv("fed_data_transpose.csv")
fed_data_transpose <- fed_data_transpose %>% remove_rownames %>% column_to_rownames(var="X1")
fed_data_transpose <- fed_data_transpose[,-1]

xrange <- range(0:60)
yrange <- range(0:60)

plot(xrange, yrange, type="n", xlab="Years",
     ylab="Real GDP in Billions", main = "US, UK, Japan Real GDP from 1960 to 2018")
lines(fed_data$gbr_rgdp, col='blue', type='l')
lines(fed_data$usa_rgdp, col='red', type='l')
lines(fed_data$jpn_rgdp, col='purple', type = 'l')
legend("topleft", c("UK", "US", "Japan"), fill=c("blue", "red", "purple"))

# dynamic time warping plot --> US, Japan
plot(dtw(fed_data$jpn_rgdp, fed_data$usa_rgdp, keep=TRUE), xaxp  = c(0,10,10), yaxp = c(0,10,10), type="twoway", col=c('purple', 'red'), main = "Dynamic Time Warping of US and Japan from 1975 to 2018")
legend("bottomright", c("Japan", "US"), fill=c("purple", "red"))

# dynamic time warping plot --> US, UK
plot(dtw(fed_data$gbr_rgdp, fed_data$usa_rgdp, keep=TRUE), xaxp  = c(0,10,10), yaxp = c(0,10,10), type="twoway", col=c('blue', 'red'), main = "Dynamic Time Warping of US and UK from 1975 to 2018")
legend("bottomright", c("UK", "US"), fill=c("blue", "red"))

# plot of us and uk
plot(dtw(fed_data$usa_rgdp, fed_data$gbr_rgdp, keep=TRUE), xlab="US Data", ylab="UK Data",  xaxp  = c(0,10,10), yaxp = c(0,10,10), 
     type="threeway", col = c('blue'))

# plot of us and japan
plot(dtw(fed_data$usa_rgdp, fed_data$jpn_rgdp, keep=TRUE), xlab="US Data", ylab="Japan Data", xaxp  = c(0,10,10), yaxp = c(0,10,10), 
     type="threeway", col = c('purple'))

clust.pam <- tsclust(fed_data, type="partitional", k=2L:17L, distance="dtw", centroid="pam")

clust.pam <- tsclust(fed_data, type="partitional", k=6L, distance="dtw", clustering="pam")

plot(clust.pam, type = "sc")
t(cbind(fed_data[,0], cluster = clust.pam@cluster))

plot(clust.pam, type = "sc", clus = 1L)

plot(clust.pam, type = "series", clus = 1L)

plot(clust.pam, type = "centroids", clus = 1L)

plot(clust.hier <- tsclust(fed_data, type = "h", k = 6L, distance = "dtw"))

plot(clust.hier, type="sc")

cutree(clust.hier, k=6L)

cvi(clust.hier)

cvi(clust.pam)
