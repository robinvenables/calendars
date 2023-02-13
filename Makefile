UPDATE_FILE = .updated.files

all: prepare output/6Nations.ics output/F1.ics output/Lions.ics output/MotoGP.ics deploy

prepare:
	@rm -f $(UPDATE_FILE)

output/6Nations.ics: 6nations/6Nations.ics
	cp 6nations/6Nations.ics output
	@echo $(@F) >> $(UPDATE_FILE)

output/F1.ics: f1/F1.csv
	mkf1
	@echo $(@F) >> $(UPDATE_FILE)

output/Lions.ics: lions/Lions.ics
	cp lions/Lions.ics output
	@echo $(@F) >> $(UPDATE_FILE)

output/MotoGP.ics: motogp/MotoGP.csv
	mkmotogp
	@echo $(@F) >> $(UPDATE_FILE)

deploy:
	@copy-and-invalidate $(UPDATE_FILE)

clean:
	@rm -f output/*.ics $(UPDATE_FILE)
