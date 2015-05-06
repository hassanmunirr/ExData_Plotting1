source('data.R')
# FIlter observations relating to Baltimore MD
Baltimore <- subset(NEI, fips == "24510")

# Total all emissions in Baltimore MD, for the years 1999 to 2008
totalBaltimore <- tapply(Baltimore$Emissions, Baltimore$year, sum)

# Plot to file
png("plot2.png", width = 480, height = 480)
par(bg = 'grey')
barplot(totalBaltimore, col = rainbow(5, start = 0, end = 1), xlab = "Year", ylab = "Total PM2.5 Emissions (Tons)", main = "Yearly Emissions (tons) in Baltimore City, Maryland")
dev.off()