-- To select eveything from table
SELECT * FROM olympic_games.athlete_events;

-- To find total number of summer olympic games
SELECT count(distinct games) as total_number_of_summergames from olympic_games.athlete_events 
where Season ='Summer';

-- To find games played in summer in olympic games
Select distinct Sport,Games From olympic_games.athlete_events where Season ='Summer' order by games;

-- To find number of games played in olympic
Select Sport, count(Games) as no_of_games from olympic_games.athlete_events group by Sport;