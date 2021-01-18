lokasi_kerja <- "D:/DataMining"
setwd(lokasi_kerja)
getwd()
library(factoextra)
dataset <- read.csv("machine.csv", sep =",")
head(dataset)
data <-dataset[3:10]
head(data)
fviz_nbclust(data, kmeans, method = "silhouette")
clustering <-kmeans(data, 2)
clustering
fviz_cluster(clustering, geom = "point", data = data)+ggtitle("HASIL CLUSTERING")
hasil =data.frame(data,clustering$cluster)
View(hasil)
