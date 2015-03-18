import csv

with open('trainingmaxes.csv') as csvfile:
	reader = csv.reader(csvfile)
	next(reader, None) #skip the headers
	writer = open("trainingmaxes.sql", 'w')
	for row in reader:
		sql = "insert into trainingmax (cycleid, movementid, weight"
		hasNote = True if row[3] != "" else False
		if hasNote:
			sql += ", notes"
		sql += ") values (" + row[0] 
		for value in row[1:3]:
			sql += ", " + value
		if hasNote:
			sql += ", '" + row[3] + "'"
		sql += ");\n"
		writer.write(sql)
