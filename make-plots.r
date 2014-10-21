#!/usr/bin/env Rscript

bgrMeansPlots <- function() {
	h = c(10,15,16,18,73,80,6,72,82,6,76,86,7,76,83,7,69,74,6,59,61,6,43,47,3,39,51,7,67,83,13,104,125,13,110,138,14,117,150,13,115,140,13,108,132,11,102,122,11,78,92,11,60,69,8,45,49,8,23,24)
	v = c(0,0,0,1,2,2,2,16,18,3,34,40,7,52,63,16,77,92,18,109,119,19,144,158,25,158,179,23,163,186,16,122,158,13,132,165,11,124,147,11,113,129,12,88,102,12,69,83,2,35,45,1,11,15,1,1,2,0,0,0)
	ver = data.frame(b=v[seq(1, length(v), 3)], g=v[seq(2, length(v), 3)], r=v[seq(3, length(v), 3)])
	hor = data.frame(b=h[seq(1, length(h), 3)], g=h[seq(2, length(h), 3)], r=h[seq(3, length(h), 3)])

	pdf('BGR_means_hor_plot.pdf')
	matplot(hor, type=c("b"), pch=1, lwd=2, col=c("blue","red","dark green"), xlab="Bin", ylab="Mean Color Intensity", ylim=c(0,255), main = "BGR Color Means for Horizontal Bins")
	dev.off()

	pdf('BGR_means_ver_plot.pdf')
	matplot(ver, type=c("b"), pch=1, lwd=2, col=c("blue","red","dark green"), xlab="Bin", ylab="Mean Color Intensity", ylim=c(0,255), main = "BGR Color Means for Vertical Bins")
	dev.off()
}

bgrMeansPlots()
