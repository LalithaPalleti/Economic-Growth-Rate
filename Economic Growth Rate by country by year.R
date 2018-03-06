#gapminder data
economic_data <- read.csv('past_10yr_growth.csv',check.names = F,stringsAsFactors = F)

names(economic_data)
typeof(economic_data)
head(economic_data)

tidy <-melt(economic_data, value.name = "Count", varnames=c('Country', 'Year'))
names(tidy)
names(tidy)<- str_replace_all(names(economic_data),"","Country")