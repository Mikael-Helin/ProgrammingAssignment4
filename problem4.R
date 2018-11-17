coalSCC<-SCC[grepl("Coal",SCC$Short.Name),]$SCC
coalData<-subset(NEI,NEI$SCC%in%coalSCC)
coalTable<-tapply(coalData$Emissions,coalData[,6],sum)
t=as.numeric(names(coalTable))

plot(t,coalTable,pch=8,col="blue",main="USA PM2.5 Coal Emission by Type and Year",xlab="Year",ylab="Emission of Coal (tons)",ylim=c(3.5E5, 6.5E5))
abline(lm(coalTable~t), col="red",lty=5)
dev.copy(png,filename="plot4.png")
dev.off()
