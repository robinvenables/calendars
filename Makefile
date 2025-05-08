all: output/calendars/6Nations.ics output/calendars/F1.ics output/calendars/Lions.ics output/calendars/MotoGP.ics output/calendars/WEC.ics

output/calendars/6Nations.ics: 6nations/6Nations/Fixtures-Matches.csv
	./mk6nations

output/calendars/F1.ics: f1/F1/Calendar-Timetable.csv
	./mkf1

output/calendars/Lions.ics: lions/Lions/lions.csv
	./mklions

output/calendars/MotoGP.ics: motogp/MotoGP/Calendar-Timetable.csv
	./mkmotogp

output/calendars/WEC.ics: wec/WEC/Calendar-Timetable.csv
	./mkwec
