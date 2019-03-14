## Data 
- `andre-iguodala.csv`
- `draymond-green.csv`
- `kevin-durant.csv`
- `klay-thompson.csv`
- `stephen-curry.csv`

This is a data dictionary for stats for 5 players for each of the games they played.

Here's the description of the data variables:

- `team_name`: name of the team.
- `game_date`: date of the game was played 
- `season`: year they game was played
- `period`:an NBA game is divided in 4 periods of 12 mins each. For example, a value
for `period` = 1 refers to the first period (the first 12 mins of the game).
- `minutes_remaining` and `seconds_remaining` have to do with the amount of time in
minutes and seconds, respectively, that remained to be played in a given period.
- `shot_made_flag` indicates whether a shot was made (y) or missed (n).
- `action_type` has to do with the basketball moves used by players, either to pass by
defenders to gain access to the basket, or to get a clean pass to a teammate to score a
two pointer or three pointer.
- `shot_type` indicates whether a shot is a 2-point field goal, or a 3-point field goal.
- `shot_distance`: distance to the basket (measured in feet).
- `opponent`: name of team player was playing aganist
- `x` and `y` refer to the court coordinates (measured in inches) where a shot occurred.