select title from movies JOIN ratings ON movies.id = ratings.movie_id
where id in
(select movie_id from ratings where movie_id in
(select movie_id from stars where person_id in
(SELECT id from people where name = "Johnny Depp"))) and
id in
(select movie_id from ratings where movie_id in
(select movie_id from stars where person_id in
(SELECT id from people where name = "Helena Bonham Carter")));