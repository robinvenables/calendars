all: output/6Nations.ics output/F1.ics output/Lions.ics output/MotoGP.ics

output/6Nations.ics: 6nations/6Nations/Fixtures-Matches.csv
	./mk6nations

output/F1.ics: f1/F1/Calendar-Timetable.csv
	./mkf1

output/Lions.ics: lions/Lions.ics
	cp lions/Lions.ics output/Lions.ics

output/MotoGP.ics: motogp/MotoGP.csv
	./mkmotogp
