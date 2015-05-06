source('data.R')

data <- loadData()
png(filename='plot1.png', width=480, height=480, units='px')

hist(as.numeric(data$Global_active_power), main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.cur()
# dev.off()