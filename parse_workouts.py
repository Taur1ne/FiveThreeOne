import csv

date_format = "%m/%d/%Y"

with open('workout.csv') as csvfile:
	reader = csv.reader(csvfile)
	next(reader, None) #skip the headers
	writer = open("workouts.sql", 'w')
	for row in reader:
		movement = row[2].lower()
		if movement == "bench":
			movementid = "1"
		elif movement == "squat":
			movementid = "2"
		elif movement == "press":
			movementid = "3"
		elif movement == "deadlift":
			movementid = "4"
		else:
			print "invalid movement"

		delimiter = ", "
		sql = "insert into workout (cycleid, movementid, date, week, weightlifted,"
		sql += "amountofreps) values (" + row[0] + delimiter + movementid + delimiter
		sql += "STR_TO_DATE('" + row[1] + "', '" + date_format + "')" + delimiter + "\"" + row[3] + "\""
		sql += delimiter + row[4] + delimiter + row[5] + ");\n"
		writer.write(sql)
