library(ggplot2)
library(cowplot)
library(showtext)

mydata1 <- read.csv("Random2_n=20.csv",header = T)
mydata1$proportion = mydata1$proportion/10 
p1 <- ggplot(mydata1, aes(method, as.factor(OTUs)), color = as.factor(proportion)) + geom_tile(aes(fill = proportion),colour = "white") + scale_fill_gradient2(limits = c(0,100), low="#FEB24C", high="#FC4E2A", mid="#FFFFCC") + 
             coord_fixed(ratio=0.15) + scale_color_grey(start = 0, end = 1) + theme(axis.text.x = element_text(size = 8), axis.text.y = element_text(size = 5.9)) + labs(x = "method", y = "OTUs", title = "Random 2% (n=20)")  +
             theme(axis.title.x=element_text(size = 12, face="bold")) +  theme(axis.title.y=element_text(size = 12, face="bold")) + theme(legend.key.width=unit(3,'mm'),legend.key.height=unit(5,'mm')) +
             theme(plot.title = element_text(size = 12, hjust = 0.5, face="bold")) + theme(plot.margin = unit(c(0.2,0,0,0), unit="mm")) + labs(fill= NULL) + 
             theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) 

mydata2 <- read.csv("Random4_n=20.csv",header = T)
mydata2$proportion = mydata2$proportion/10 
p2 <- ggplot(mydata2, aes(method, as.factor(OTUs)), color = as.factor(proportion)) + geom_tile(aes(fill = proportion),colour = "white") + scale_fill_gradient2(limits = c(0,100), low="#FEB24C", high="#FC4E2A", mid="#FFFFCC") + 
             coord_fixed(ratio=0.15) + scale_color_grey(start = 0, end = 1) + theme(axis.text.x = element_text(size = 8), axis.text.y = element_text(size = 5.9)) + labs(x = "method", y = "OTUs", title = "Random 4% (n=20)")  +
             theme(axis.title.x=element_text(size = 12, face="bold")) +  theme(axis.title.y=element_text(size = 12, face="bold")) + theme(legend.key.width=unit(3,'mm'),legend.key.height=unit(5,'mm'))  +
             theme(plot.title = element_text(size = 12, hjust = 0.5, face="bold")) + theme(plot.margin = unit(c(0.2,0,0,0), unit="mm")) + labs(fill= NULL) + 
             theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) 

gg <- ggdraw() + draw_plot(p1, 0.04, 0, 0.43, 1, scale = 1) + draw_plot(p2, 0.53, 0, 0.43, 1, scale = 1) 
  # +draw_plot_label(c("A", "B"), c(0.02, 0.51), c(1, 1), size = 24, colour = "black", family = "serif")

gg