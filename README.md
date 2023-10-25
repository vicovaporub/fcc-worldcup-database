# World Cup Database

## This project is required for the [freeCodeCamp](www.freecodecamp.org)'s Relational Database certification and uses a combination of Bash and PostgreSQL to create a database for the final three rounds of the World Cup tournament from 2014 and 2018. It includes the year, round, winner, opponent, and the number of goals each team scored in each game.

## There are three parts to this project: Creating the database, Inserting data, and Query the database. For that there are three files "worldcup.sql" (PostgreSQL database), "insert_data.sh" (Bash script that has commands to insert data in the database), and "games.csv" (where the data that will be passed is stored)

The tasks for this project are:

- Create a database named `worldcup`
- Create two tables in the `worldcup` database named `teams` and `games`
- The `teams` table should have a `team_id` column that is a type `SERIAL` and is the primary key, and a `name` column that has to be `UNIQUE`
- The `games` table should have a `game_id` column that is a type `SERIAL` and is the primary key, a `year` column of type `INT`, and a `round` column of type `VARCHAR`
- The `games` table should have `winner_id` and `opponent_id` foreign key columns that each reference `team_id` from the `teams` table
- The `games` table should have `winner_goals` and `opponent_goals` columns that are type `INT`
- All columns should have the `NOT NULL` constraint
- The two scripts (`.sh`) files should have executable permissions
- When `insert_data.sh` runs, it should add each unique team to the `teams` table. There should be 24 rows
- When `insert_data.sh` runs, it should insert a row for each line in the `games.csv` file (other than the top line of the file). There should be 32 rows. Each row should have every column filled in with the appropriate info.
- The queries in `queries.sh` file must be completed and the output must be equal to the output expected in the `expected_output.txt` file
