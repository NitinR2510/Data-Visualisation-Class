library(igraph)
data <- read.csv("C:/Users/lenovo/Desktop/Social_info_network/DA/Basic_LinkedInDataExport_04-29-2021/connections.csv", header=T)
y<- data.frame(data$First.Name, data$Company)
net <- graph.data.frame(y, directed = T)
V(net)
V(net)$label <- V(net)$name
V(net)$degree <- degree(net)
png("number_of_nodes.jpg")
hist(V(net)$degree,
     col = 'green',
     main = 'Histogram of Node Degree',
     ylab = 'Frequency',
     xlab = 'Degree of Vertices')
dev.off()
png("network.jpg")
set.seed(222)
plot(net,
     vertex.color = 'green',
     vertext.size = 2,
     edge.arrow.size = 0.1,
     vertex.label.cex = 0.8)
dev.off()