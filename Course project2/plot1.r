source('data.R')
# Total all emissions for the years 1999 to 2008
totalNEI <- tapply(NEI$Emissions, NEI$year, sum)

# Plot output to file
png("plot1.png", width = 480, height = 480)
par(bg = 'grey')
barplot(totalNEI, col = rainbow(10, start = 0, end = 1), xlab = "Year", ylab = "Total PM2.5 Emissions in Tons", main = "Total PM 2.5 Emissions (tons) in USA")
dev.off()