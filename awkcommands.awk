-F\, '{OFS = ","; ORS = "\n";} $3=4122 {print $0}' $TEST_DATA/Client/trans.csv_20151016102456703.csv > $TEST_DATA/Client/trans_ash4122.csv
# converts selected files from a csv into a smaller csv, except it changes the lookup column to the thing you are looking up and removes the quotes from items in the lookup column
