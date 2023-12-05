CREATE TABLE meteorites_temp(name TEXT, id INTEGER, nametype TEXT, class TEXT, mass REAL, discovery TEXT, year INTEGER, lat REAL, long REAL, PRIMARY KEY ('id));
.import --csv --skip 1 meteorites.csv meteorites_temp
