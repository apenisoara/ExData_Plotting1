# How the dataset file was generated
curl -o household_power_consumption.txt --url "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
grep "^[12]/2/2007" household* >>dataset.txt