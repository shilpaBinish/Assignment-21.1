getwd()
setwd("D:\\R")
d<-read.csv("cluster.csv",na.strings = c(""," ",NA))
d
head(d, 3)
# log transform 
log.ir <- log(d[, 1:4])
ir.rating <- d[, 5]
print(ir.pca)
# plot method
plot(ir.pca, type = "l")
# summary method
summary(ir.pca)
# Predict PCs
predict(ir.pca, 
        newdata=tail(log.ir, 2))
library(devtools)
install_github("ggbiplot", "vqv")

library(ggbiplot)
g <- ggbiplot(ir.pca, obs.scale = 1, var.scale = 1, 
              groups = ir.rating, ellipse = TRUE, 
              circle = TRUE)
g <- g + scale_color_discrete(name = '')
g <- g + theme(legend.direction = 'horizontal', 
               legend.position = 'top')
print(g)

cx <- sweep(d, 2, colMeans(x), "-")
sv <- svd(d)
names(sv)
sv$rating[1:5, 1:5]
pc$rating[1:5, 1:5]
svNoCenter <- svd(x)
plot(pc$x[, 1], pc$x[, 2], col = group, main = "PCA", xlab = "PC1", ylab = "PC2")
points(0, 0, pch = 3, cex = 4, lwd = 4)