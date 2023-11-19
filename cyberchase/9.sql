SELECT SUM(episode_in_season) FROM episodes WHERE SUBSTRING(air_date, 1, 4) BETWEEN '2002' AND '2007';
