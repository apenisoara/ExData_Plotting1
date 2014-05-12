# How the dataset file was generated
INFILE=household_power_consumption.txt
INFILE_ZIP=${INFILE%.txt}.zip
OUTFILE=dataset.txt

curl -o $INFILE_ZIP --url "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
unzip $INFILE_ZIP $INFILE
head -1 $INFILE > $OUTFILE
grep "^[12]/2/2007" $INFILE >> $OUTFILE
