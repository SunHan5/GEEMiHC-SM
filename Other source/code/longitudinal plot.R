library(rayshader)
library(rayrender)
library(ggplot2)
library(cowplot)
library(showtext)
library(ggnewscale)

################################################## AR_uHC
rm(list = ls())
AR_uHC <- read.csv("format.ord_uHC_AR_scenario1.csv",header = F)
colnames(AR_uHC) <- c("samples", "OTUs", "value", "type", "shape")
value_max <- max(AR_uHC$value)
rank <- read.csv("rank_uHC_AR_scenario1.csv",header = F)
levels <- rank$V1
AR_uHC$OTUs <- factor(AR_uHC$OTUs, levels=levels)

p = ggplot() + xlab("Sample") + ylab("OTUs") + geom_point(data = AR_uHC, aes(x=as.factor(samples), y=OTUs, color=value), shape=19, size=2) + geom_hline(yintercept = 32.5, color="red", linetype="dashed") + 
  scale_y_discrete(limits= factor(levels)) + scale_color_continuous(limits=c(0,value_max), low="white", high="#c1b649")  +
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), axis.text.y=element_text(size=6), legend.title=element_blank(), text = element_text(size=8)) +
  theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(),axis.line = element_line(colour = "black")) + facet_wrap(type~., scale="free_x")

plot_gg(p, height=7, width=9, scale = 300, multicore=TRUE, shadow_intensity = 0.7, pointcontract = 0.7, 
        windowsize = c(1900, 1000), zoom = 0.6, phi = 61, theta = 0, sunangle = 229)

render_snapshot(clear = TRUE)

################################################## AR_wHC
rm(list = ls())
AR_wHC <- read.csv("format.ord_wHC_AR_scenario1.csv",header = F)
colnames(AR_wHC) <- c("samples", "OTUs", "value", "type", "shape")
value_max <- max(AR_wHC$value)
rank <- read.csv("rank_wHC_AR_scenario1.csv",header = F)
levels <- rank$V1
AR_wHC$OTUs <- factor(AR_wHC$OTUs, levels=levels)

p = ggplot() + xlab("Sample") + ylab("OTUs") + geom_point(data = AR_wHC, aes(x=as.factor(samples), y=OTUs, color=value), shape=19, size=2) + geom_hline(yintercept = 32.5, color="red", linetype="dashed") + 
  scale_y_discrete(limits= factor(levels)) + scale_color_continuous(limits=c(0,value_max), low="white", high="#c1b649")  +
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), axis.text.y=element_text(size=6), legend.title=element_blank(), text = element_text(size=8)) +
  theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(),axis.line = element_line(colour = "black")) + facet_wrap(type~., scale="free_x")

plot_gg(p, height=7, width=9, scale = 300, multicore=TRUE, shadow_intensity = 0.7, pointcontract = 0.7, 
        windowsize = c(1900, 1000), zoom = 0.6, phi = 61, theta = 0, sunangle = 229)

render_snapshot(clear = TRUE)

################################################## EX_uHC
rm(list = ls())
EX_uHC <- read.csv("format.ord_uHC_EX_scenario1.csv",header = F)
colnames(EX_uHC) <- c("samples", "OTUs", "value", "type", "shape")
value_max <- max(EX_uHC$value)
rank <- read.csv("rank_uHC_EX_scenario1.csv",header = F)
levels <- rank$V1
EX_uHC$OTUs <- factor(EX_uHC$OTUs, levels=levels)

p = ggplot() + xlab("Sample") + ylab("OTUs") + geom_point(data = EX_uHC, aes(x=as.factor(samples), y=OTUs, color=value), shape=19, size=2) + geom_hline(yintercept = 32.5, color="red", linetype="dashed") + 
  scale_y_discrete(limits= factor(levels)) + scale_color_continuous(limits=c(0,value_max), low="white", high="#c1b649") +
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), axis.text.y=element_text(size=6), legend.title=element_blank(), text = element_text(size=8)) +
  theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(),axis.line = element_line(colour = "black")) + facet_wrap(type~., scale="free_x")

plot_gg(p, height=7, width=9, scale = 300, multicore=TRUE, shadow_intensity = 0.7, pointcontract = 0.7, 
        windowsize = c(1900, 1000), zoom = 0.6, phi = 61, theta = 0, sunangle = 229)

render_snapshot(clear = TRUE)

################################################## EX_wHC
rm(list = ls())
EX_wHC <- read.csv("format.ord_wHC_EX_scenario1.csv",header = F)
colnames(EX_wHC) <- c("samples", "OTUs", "value", "type", "shape")
value_max <- max(EX_wHC$value)
rank <- read.csv("rank_wHC_EX_scenario1.csv",header = F)
levels <- rank$V1
EX_wHC$OTUs <- factor(EX_wHC$OTUs, levels=levels)

p = ggplot() + xlab("Sample") + ylab("OTUs") + geom_point(data = EX_wHC, aes(x=as.factor(samples), y=OTUs, color=value), shape=19, size=2) + geom_hline(yintercept = 32.5, color="red", linetype="dashed") + 
  scale_y_discrete(limits= factor(levels)) + scale_color_continuous(limits=c(0,value_max), low="white", high="#c1b649")  +
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), axis.text.y=element_text(size=6), legend.title=element_blank(), text = element_text(size=8)) +
  theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(),axis.line = element_line(colour = "black")) + facet_wrap(type~., scale="free_x")

plot_gg(p, height=7, width=9, scale = 300, multicore=TRUE, shadow_intensity = 0.7, pointcontract = 0.7, 
        windowsize = c(1900, 1000), zoom = 0.6, phi = 61, theta = 0, sunangle = 229)

render_snapshot(clear = TRUE)

################################################## IN_uHC
rm(list = ls())
IN_uHC <- read.csv("format.ord_uHC_IN_scenario1.csv",header = F)
colnames(IN_uHC) <- c("samples", "OTUs", "value", "type", "shape")
value_max <- max(IN_uHC$value)
rank <- read.csv("rank_uHC_IN_scenario1.csv",header = F)
levels <- rank$V1
IN_uHC$OTUs <- factor(IN_uHC$OTUs, levels=levels)

p = ggplot() + xlab("Sample") + ylab("OTUs") + geom_point(data = IN_uHC, aes(x=as.factor(samples), y=OTUs, color=value), shape=19, size=2) + geom_hline(yintercept = 33.5, color="red", linetype="dashed") + 
  scale_y_discrete(limits= factor(levels)) + scale_color_continuous(limits=c(0,value_max), low="white", high="#c1b649")  +
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), axis.text.y=element_text(size=6), legend.title=element_blank(), text = element_text(size=8)) +
  theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(),axis.line = element_line(colour = "black")) + facet_wrap(type~., scale="free_x")

plot_gg(p, height=7, width=9, scale = 300, multicore=TRUE, shadow_intensity = 0.7, pointcontract = 0.7, 
        windowsize = c(1900, 1000), zoom = 0.6, phi = 61, theta = 0, sunangle = 229)

render_snapshot(clear = TRUE)

################################################# IN_wHC
rm(list = ls())
IN_wHC <- read.csv("format.ord_wHC_IN_scenario1.csv",header = F)
colnames(IN_wHC) <- c("samples", "OTUs", "value", "type", "shape")
value_max <- max(IN_wHC$value)
rank <- read.csv("rank_wHC_IN_scenario1.csv",header = F)
levels <- rank$V1
IN_wHC$OTUs <- factor(IN_wHC$OTUs, levels=levels)

p = ggplot() + xlab("Sample") + ylab("OTUs") + geom_point(data = IN_wHC, aes(x=as.factor(samples), y=OTUs, color=value), shape=19, size=2) + geom_hline(yintercept = 33.5, color="red", linetype="dashed") + 
  scale_y_discrete(limits= factor(levels)) + scale_color_continuous(limits=c(0,value_max), low="white", high="#c1b649")  +
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), axis.text.y=element_text(size=6), legend.title=element_blank(), text = element_text(size=8)) +
  theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(),axis.line = element_line(colour = "black")) + facet_wrap(type~., scale="free_x")

plot_gg(p, height=7, width=9, scale = 300, multicore=TRUE, shadow_intensity = 0.7, pointcontract = 0.7, 
        windowsize = c(1900, 1000), zoom = 0.6, phi = 61, theta = 0, sunangle = 229)

render_snapshot(clear = TRUE)

