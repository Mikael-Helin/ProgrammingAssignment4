## ProgrammingAssignment4

Test

# Problem 1
Q: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

A: From the figure plot1.png we can see that there was a clear decline in pollution in USA from year 1999 to year 2008.

# Problem 2
Q: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

A: From the figure plot2.png we can see that there was a clear decline in pollution in Baltimore City from year 1999 to year 2008.

# Problem 3

Q: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

A: All sources except the one indicated by the type 'point' has shown decline in emission over the years. The source indicated by the type 'point' first increasd and then decreased back to near its original value, i.e. the total emission in year 1999 is about the same as in year 2008 for the emission of type 'point'.

# Problem 4

Q: Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

A: The total emission of coal in USA decreased roughly by a third from year 1999 to year 2008.

# Problem 5

Q: How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

A: The total emission from motor vehicles in Baltimore City decreased roughly by two thirds from year 1999 to year 2008.

# Problem 6

Q: Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

A: Comparision in absolute change between the cities is not fair when Los Angeles has a population of 4M people while Baltimore has population of only 0.6M people. By inspection from the matrix mydata in the program program6.R one can see that pollution increased for Los Angeles from year 1999 to year 2008 while the polution decreased for Baltimore City from year 1999 to year 2008. I think that most fair plot would be to plot the road emission in Los Angeles through road emission in Baltimore city by years 1999-2008 is the most fair. This ratio increased from 11 to 46 for years 1999 and 2008. Which tells us that pollution decreased a lot in Baltimore City compared to Los Angeles during the time year 1999-2008.

