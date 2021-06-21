# Movies

Write SQL queries to answer questions about a database of movies.

## Getting Started
Here’s how to download this problem into your own CS50 IDE. Log into [CS50 IDE](ide.cs50.io) and then, in a terminal window, execute each of the below.

* Execute `cd ~` (or simply `cd` with no arguments) to ensure that you’re in your home directory.
* Execute `mkdir pset7` to make (i.e., create) a directory called `pset7`.
* Execute `cd pset7` to change into (i.e., open) that directory.
* Execute `wget https://cdn.cs50.net/2020/fall/psets/7/movies/movies.zip` to download a (compressed) ZIP file with this problem’s distribution.
* Execute `unzip movies.zip` to uncompress that file.
* Execute `rm movies.zip` followed by `yes` or `y` to delete that ZIP file.
* Execute `ls`. You should see a directory called `movies`, which was inside of that ZIP file.
* Execute `cd movies` to change into that directory.
* Execute `ls`. You should see a `movies.db` file, and some empty `.sql` files as well.
## Understanding
Provided to you is a file called `movies.db`, a SQLite database that stores data from [IMDb](https://www.imdb.com/) about movies, the people who directed and starred in them, and their ratings. In a terminal window, run `sqlite3 movies.db` so that you can begin executing queries on the database.

First, when `sqlite3` prompts you to provide a query, type `.schema` and press enter. This will output the `CREATE TABLE` statements that were used to generate each of the tables in the database. By examining those statements, you can identify the columns present in each table.

Notice that the `movies` table has an `id` column that uniquely identifies each movie, as well as columns for the `title` of a movie and the `year` in which the movie was released. The `people` table also has an `id` column, and also has columns for each person’s `name` and `birth` year.

Movie ratings, meanwhile, are stored in the `ratings` table. The first column in the table is `movie_id`: a foreign key that references the `id` of the `movies` table. The rest of the row contains data about the `rating` for each movie and the number of `votes` the movie has received on IMDb.

Finally, the `stars` and `directors` tables match people to the movies in which they acted or directed. (Only principal stars and directors are included.) Each table has just two columns: `movie_id` and `person_id`, which reference a specific movie and person, respectively.

The challenge ahead of you is to write SQL queries to answer a variety of different questions by selecting data from one or more of these tables.
## Specification
For each of the following problems, you should write a single SQL query that outputs the results specified by each problem. Your response must take the form of a single SQL query, though you may nest other queries inside of your query. You **should not** assume anything about the `id`s of any particular movies or people: your queries should be accurate even if the `id` of any particular movie or person were different. Finally, each query should return only the data necessary to answer the question: if the problem only asks you to output the names of movies, for example, then your query should not also output each movie’s release year.

You’re welcome to check your queries’ results against [IMDb](https://www.imdb.com/) itself, but realize that ratings on the website might differ from those in movies.db, as more votes might have been cast since we downloaded the data!

<ol>
  <li>In `1.sql`, write a SQL query to list the titles of all movies released in 2008.</li>
  * Your query should output a table with a single column for the title of each movie.
  <li>In `2.sql`, write a SQL query to determine the birth year of Emma Stone.</li>
  * Your query should output a table with a single column and a single row (not including the header) containing Emma Stone’s birth year.
  * You may assume that there is only one person in the database with the name Emma Stone.
</ol>
