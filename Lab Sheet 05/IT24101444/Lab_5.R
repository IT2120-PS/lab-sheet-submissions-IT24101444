setwd("C:\\Users\\IT24101444\\Desktop\\IT24101444")


Delivery_Times <- read.table("lab5.txt", header = TRUE)

hist(Delivery_Times$Delivery_Time, breaks = seq(20, 70, length.out = 10), 
     right = FALSE, main = "Histogram of Delivery Times", 
     xlab = "Delivery Time", ylab = "Frequency")


cum_freq <- cumsum(table(cut(Delivery_Times$Delivery_Time, breaks = seq(20, 70, length.out = 10), right = FALSE)))


plot(seq(20, 70, length.out = 10)[-1], cum_freq, type = "b", 
     main = "Ogive", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency", 
     pch = 16)