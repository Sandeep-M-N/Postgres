select distinct f.film_id, a.first_name,a.last_name
from actor a 
inner join film_actor f
using(actor_id)
order by f.film_id;
 film_id | first_name  |  last_name
---------+-------------+--------------
       1 | Christian   | Gable
       1 | Johnny      | Cage
       1 | Lucille     | Tracy
       1 | Mary        | Keitel
       1 | Mena        | Temple
       1 | Oprah       | Kilmer
       1 | Penelope    | Guiness
       1 | Rock        | Dukakis
       1 | Sandra      | Peck
       1 | Warren      | Nolte
       2 | Bob         | Fawcett
       2 | Chris       | Depp
       2 | Minnie      | Zellweger
       2 | Sean        | Guiness
       3 | Bob         | Fawcett
       3 | Cameron     | Streep
       3 | Julianne    | Dench
       3 | Nick        | Wahlberg
       3 | Ray         | Johansson
-----------------------------------------------------------------------
select a.first_name,a.last_name 