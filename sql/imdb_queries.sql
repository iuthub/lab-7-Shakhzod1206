
----- AUTHOR NAME: Shakhzod Amirov -----




--  First Query
SELECT * FROM `movies` WHERE year="1995";

-- Second Query
SELECT count(actor_id) as num_actors
from roles join movies
WHERE roles.movie_id=movies.id and movies.name="Lost in Translation";   <!-- Total # of actors is 51 -->


-- Third Query 

SELECT first_name, last_name FROM actors a
	JOIN roles r ON a.id=r.actor_id
    JOIN movies m ON m.id=r.movie_id
    WHERE m.name='Lost in Translation'    <! -- Names of the people who played a part in the movie "Lost in Translat"ion"


-- Shigekazu
-- Aida
-- Julliet
-- Akinyi
-- Richard (XV)
-- Allen
-- Ryuichiro
-- Baba
-- Diedrich
-- Bollman
-- Hugo
-- Codaro
-- François
-- du Bois
-- Georg O.P.
-- Eschert
-- Takashi (I)
-- Fujii
-- Yasuhiko
-- Hattori
-- Fumihiro
-- Hayashi
-- Yumi
-- Ikeda
-- Hiroshi (I)
-- Kawashima
-- Nobuhiko
-- Kitamura
-- Nao
-- Kitman
-- Ryo
-- Kondo
-- Tim
-- Leffman
-- Jun
-- Maki
-- Kazuyoshi
-- Minamimagoe
-- Akimitsu
-- Naruyama
-- Akira
-- Motomura
-- Bill (I)
-- Murray
-- Tetsuro
-- Naka
-- Kanako
-- Nakazato
-- Kunichi
-- Nomura

   -- 4th Query

SELECT first_name,last_name FROM directors d
JOIN movies_directors md ON d.id=md.director_id
JOIN movies m ON md.movie_id=m.id
WHERE m.name="Fight Club"

-- first_name | last_name
-- David		Fincher


-- 5th Query 

SELECT COUNT(*) FROM movies m
JOIN movies_directors md ON md.movie_id=m.id
JOIN directors d ON d.id=md.director_id
where d.first_name="Client" d.last_name="Eastwood";

-- Count(*)
-- 1


-- 6th Query 
SELECT name FROM movies m
JOIN movies_directors md ON m.id=md.movie_id
JOIN directors d ON d.id=md.director_id
WHERE d.first_name="Clint" and	d.last_name="Eastwood";

-- name
-- Mystic River


-- 7th Query 

SELECT first_name,last_name FROM directors d
JOIN movies_directors md ON d.id=md.director_id
JOIN movies_genres mg ON mg.movie_id=md.movie_id
WHERE genre="horror films";

-- first_name | last_name
-- James(I)     Cameron
-- Paul(I)      Verhoeven
-- David        Koepp


-- 8th Query 
SELECT a.first_name, a.last_name FROM actors a
JOIN roles r ON r.actor_id=a.id
JOIN  movies m ON m.id=r.movie_id
JOIN movies_directors md ON md.movie_id=m.id
JOIN directors d ON d.id=md.director_id
WHERE d.first_name="Christopher" AND d.last_name="Nolan";


-- first_name | last_name

	Dean		Alexandrou
	Joey		Ansah
	Christian 	Bale
	Abdul 		Blackmanwest
	Mark Boone 	Junior
	Tim (I) 	Booth
	Morne 		Botes
	Richard 	Brake
	Cliff 		Bura

	Michael (I)	Caine
	Michael (XIII)	Coleman
	Phill		Curr
	Ray			Donn
	Barry		Dowden
	Freedom		Eche
	Charles (VI)Edwards
	Jonathan D.	Ellis
	James		Embree
	Jonathan    Foo
	Morgan (I)	Freeman
	JonathanFoo	Ghaly
	Dwight		Gooden
	Tamer		Hassan
	Rutger		Hauer
	Scott		Hinds














