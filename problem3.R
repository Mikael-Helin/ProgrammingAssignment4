library(ggplot2)
library(reshape2)

baltimoreData<-subset(NEI,fips=="24510",select=c("Emissions","year","type"))
mydata<-tapply(baltimoreData$Emissions,baltimoreData[,-1],sum)

gg<-ggplot(data=melt(mydata),aes(x=year,y=value,group=type,color=type))+geom_line()+geom_point(shape=8)+xlab("Year")+ylab("Emission (tons)")+ggtitle("Baltimore PM2.5 by Type and Year")
plot(gg)
dev.copy(png,filename="plot3.png")
dev.off()
