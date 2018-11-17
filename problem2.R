## Get total emissions from Baltimore City
temp<-subset(NEI,fips=="24510",select=c(year,Emissions))
totalEmission<-tapply(temp$Emissions, temp$year, sum)

# Plot results onto file.
t=as.numeric(names(totalEmission))
plot(t,totalEmission,pch=8,col="blue",main="Total emission from PM2.5 in Baltimore City, Maryland",ylab="Mass of Total Emisssion (tons)",xlab="year")
abline(lm(totalEmission~t),col="red",lty=5)
dev.copy(png,filename="plot2.png")
dev.off()
