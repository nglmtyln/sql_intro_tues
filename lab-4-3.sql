-- Who hit the most home runs in 2019, and what team did they play for?

SELECT teams.name, players.first_name, players.last_name, MAX(stats.home_runs)
FROM stats 
    INNER JOIN teams ON teams.id = stats.team_id
    INNER JOIN players ON stats.player_id = players.id
AND teams.year = 2019;

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


-- Solution:
-- We need to combine all three tables
-- Where stats.player_id = players.id & teams.id = stats.team_id

