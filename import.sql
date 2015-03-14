LOAD DATA LOCAL INFILE 'convertcsv.csv' INTO TABLE schedule
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(matchNum, @dummy, B1, B2, B3, R1, R2, R3, @dummy, @dummy);