baltimoreData<-subset(NEI,fips=="24510" & type=="ON-ROAD",select=c("Emissions","year","type"))
mydata<-tapply(baltimoreData$Emissions,baltimoreData[,-1],sum)
t<-as.numeric(names(mydata[,1]))

plot(t,mydata,pch=8,col="blue",main="Baltimore City PM2.5 Road Emission",xlab="Year",ylab="Emission (tons)")
abline(lm(mydata~t), col="red",lty=5)
dev.copy(png,filename="plot5.png")
dev.off()
