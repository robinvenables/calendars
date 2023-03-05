# Calendars
Robin's iCalendar Repository

## Description
Scripts for the creation of various calendars that are published at https://data.robinvenables.com/calendars/

## Calendars

- Formula 1 2023 season (Qualifying, Sprint Races, and Races)
- MotoGP 2023 season (Qualifying, Sprint Races and Races)
- 6 Nations 2024 fixtures, 2023 fixtures and current results with results from the 2021 and 2022 tournaments
- British and Irish Lions 2021 tour results

## Scripts

### mkf1

Reads input from f1/F1.csv and generates output/F1.ics

## mkmotogp

Very similar to mkf1. Reads input from motogp/MotoGP.csv and generates output/MotoGP.ics

### copy-and-invalidate

Reads a file containing the names of changed calendars (this is generated automatically by make) and copies them to the S3 website bucket.
