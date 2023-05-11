all: output/6Nations.ics output/F1.ics output/Lions.ics output/MotoGP.ics

output/6Nations.ics: 6nations/6Nations.ics
	cp 6nations/6Nations.ics output

output/F1.ics: f1/F1.csv
	./mkf1

output/Lions.ics: lions/Lions.ics
	cp lions/Lions.ics output

output/MotoGP.ics: motogp/MotoGP.csv
	./mkmotogp
