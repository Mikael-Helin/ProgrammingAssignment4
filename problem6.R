## The cities are of very different size, therefore I look how their relative relation evolved over time

cityData<-subset(NEI,(fips=="24510"|fips=="06037") & type=="ON-ROAD",select=c("fips","Emissions","year"))
mydata<-tapply(cityData$Emissions,cityData[,-2],sum)
t<-as.numeric(names(mydata[1,]))
ratio=mydata[1,]/mydata[2,] ## Chosing relative ratio between the cities to make a fair comparision

## If you look at mydata then you would see that change in polution in Los Angeles is +170 tons.
## If you look at mydata then you would see that change in polution in Baltimore City is -259 tons.
## The plot shows that relative reduction in polution is better in Baltimore City than in Los Angeles.

plot(t,ratio,pch=8,col="blue",main="Relative Ratio in Road Emission PM2.5, [Los Angeles]/[Baltimore City]",xlab="Year",ylab="Relative Ratio")
abline(lm(ratio~t), col="red",lty=5)
dev.copy(png,filename="plot6.png")
dev.off()
