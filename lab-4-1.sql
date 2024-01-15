-- How many lifetime hits does Barry Bonds have?


SELECT SUM(stats.hits)
FROM stats
INNER JOIN players 
ON stats.player_id = players.id
WHERE first_name = "Barry"
AND last_name = "Bonds";



-- Expected result:
-- 2935

-- Solution
-- We need to combine players and stats table where 
-- players.id = stats.player_id


