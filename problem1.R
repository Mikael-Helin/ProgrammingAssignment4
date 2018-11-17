## Get total emissions from common fips, i.e. fips that are union from years 1999 and 2008.
fipsCommon<-intersect(unique(subset(NEI,year==1999,select=fips))[[1]],unique(subset(NEI,year==2008,select=fips))[[1]])
temp<-subset(NEI,fips%in%fipsCommon,select=c(year,Emissions))
totalEmission<-tapply(temp$Emissions, temp$year, sum)

# Plot results onto file.
X11() # For Linux
t=as.numeric(names(totalEmission))
plot(t,totalEmission,pch=8,col="blue",main="Total emission from PM2.5 in USA",ylab="Mass of Total Emisssion (tons)",xlab="year")
abline(lm(totalEmission~t),col="red",lty=5)
dev.copy(png,filename="plot1.png")
dev.off()
