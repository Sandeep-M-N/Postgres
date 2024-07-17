select cust.customer_id,
cust.first_name,
cust.last_name,
p.amount,
p.payment_date
from customer cust
inner join payment p on p.customer_id = cust.customer_id
order by p.payment_date;

customer_id | first_name  |  last_name   | amount |        payment_date
-------------+-------------+--------------+--------+----------------------------
         416 | Jeffery     | Pinson       |   2.99 | 2007-02-14 21:21:59.996577
         516 | Elmer       | Noe          |   4.99 | 2007-02-14 21:23:39.996577
         239 | Minnie      | Romero       |   4.99 | 2007-02-14 21:29:00.996577
         592 | Terrance    | Roush        |   6.99 | 2007-02-14 21:41:12.996577
          49 | Joyce       | Edwards      |   0.99 | 2007-02-14 21:44:52.996577
         264 | Gwendolyn   | May          |   3.99 | 2007-02-14 21:44:53.996577
          46 | Catherine   | Campbell     |   4.99 | 2007-02-14 21:45:29.996577
         481 | Herman      | Devore       |   2.99 | 2007-02-14 22:03:35.996577
         139 | Amber       | Dixon        |   2.99 | 2007-02-14 22:11:22.996577
         595 | Terrence    | Gunderson    |   2.99 | 2007-02-14 22:16:01.996577
         191 | Jeanette    | Greene       |   2.99 | 2007-02-14 22:23:12.996577
          95 | Paula       | Bryant       |   2.99 | 2007-02-14 22:41:17.996577
         197 | Sue         | Peters       |   2.99 | 2007-02-14 22:43:41.996577
         512 | Cecil       | Vines        |   6.99 | 2007-02-14 22:57:03.996577
         210 | Ella        | Oliver       |   2.99 | 2007-02-14 23:01:30.996577
         119 | Sherry      | Marshall     |   7.99 | 2007-02-14 23:05:16.996577
         432 | Edwin       | Burk         |   5.99 | 2007-02-14 23:07:27.996577
         546 | Kelly       | Knott        |   1.99 | 2007-02-14 23:10:43.996577
         196 | Alma        | Austin       |   5.99 | 2007-02-14 23:13:47.996577
           1 | Mary        | Smith        |   5.99 | 2007-02-14 23:22:38.996577
         368 | Harry       | Arce         |   0.99 | 2007-02-14 23:25:11.996577
         173 | Audrey      | Ray          |   2.99 | 2007-02-14 23:32:33.996577
         244 | Viola       | Hanson       |   6.99 | 2007-02-14 23:32:48.996577
         370 | Wayne       | Truong       |   6.99 | 2007-02-14 23:33:58.996577
         186 | Holly       | Fox          |   4.99 | 2007-02-14 23:47:05.996577
         561 | Ian         | Still        |   2.99 | 2007-02-14 23:52:46.996577
         402 | Luis        | Yanez        |   4.99 | 2007-02-14 23:53:34.996577
		 
-------------------------------------------------------------------------------------------
select cust.customer_id,
cust.first_name,
cust.last_name,
p.amount,
p.payment_date
from customer cust
inner join payment p using (customer_id)
order by p.payment_date;

customer_id | first_name  |  last_name   | amount |        payment_date
-------------+-------------+--------------+--------+----------------------------
         416 | Jeffery     | Pinson       |   2.99 | 2007-02-14 21:21:59.996577
         516 | Elmer       | Noe          |   4.99 | 2007-02-14 21:23:39.996577
         239 | Minnie      | Romero       |   4.99 | 2007-02-14 21:29:00.996577
         592 | Terrance    | Roush        |   6.99 | 2007-02-14 21:41:12.996577
          49 | Joyce       | Edwards      |   0.99 | 2007-02-14 21:44:52.996577
         264 | Gwendolyn   | May          |   3.99 | 2007-02-14 21:44:53.996577
          46 | Catherine   | Campbell     |   4.99 | 2007-02-14 21:45:29.996577
         481 | Herman      | Devore       |   2.99 | 2007-02-14 22:03:35.996577
         139 | Amber       | Dixon        |   2.99 | 2007-02-14 22:11:22.996577
         595 | Terrence    | Gunderson    |   2.99 | 2007-02-14 22:16:01.996577
         191 | Jeanette    | Greene       |   2.99 | 2007-02-14 22:23:12.996577
          95 | Paula       | Bryant       |   2.99 | 2007-02-14 22:41:17.996577
         197 | Sue         | Peters       |   2.99 | 2007-02-14 22:43:41.996577
         512 | Cecil       | Vines        |   6.99 | 2007-02-14 22:57:03.996577
         210 | Ella        | Oliver       |   2.99 | 2007-02-14 23:01:30.996577
         119 | Sherry      | Marshall     |   7.99 | 2007-02-14 23:05:16.996577
         432 | Edwin       | Burk         |   5.99 | 2007-02-14 23:07:27.996577
         546 | Kelly       | Knott        |   1.99 | 2007-02-14 23:10:43.996577
         196 | Alma        | Austin       |   5.99 | 2007-02-14 23:13:47.996577
           1 | Mary        | Smith        |   5.99 | 2007-02-14 23:22:38.996577
         368 | Harry       | Arce         |   0.99 | 2007-02-14 23:25:11.996577
         173 | Audrey      | Ray          |   2.99 | 2007-02-14 23:32:33.996577
---------------------------------------------------------------------------------------------
select cust.customer_id,
cust.first_name || '' || cust.last_name "customer",
s.first_name || '' || s.last_name "staff",
p.amount,
p.payment_date
from customer cust
inner join payment p using (customer_id)
inner join staff s using(staff_id)
order by p.payment_date;

 customer_id |       customer       |    staff    | amount |        payment_date
-------------+----------------------+-------------+--------+----------------------------
         416 | JefferyPinson        | JonStephens |   2.99 | 2007-02-14 21:21:59.996577
         516 | ElmerNoe             | JonStephens |   4.99 | 2007-02-14 21:23:39.996577
         239 | MinnieRomero         | MikeHillyer |   4.99 | 2007-02-14 21:29:00.996577
         592 | TerranceRoush        | JonStephens |   6.99 | 2007-02-14 21:41:12.996577
          49 | JoyceEdwards         | MikeHillyer |   0.99 | 2007-02-14 21:44:52.996577
         264 | GwendolynMay         | JonStephens |   3.99 | 2007-02-14 21:44:53.996577
          46 | CatherineCampbell    | MikeHillyer |   4.99 | 2007-02-14 21:45:29.996577
         481 | HermanDevore         | JonStephens |   2.99 | 2007-02-14 22:03:35.996577
         139 | AmberDixon           | JonStephens |   2.99 | 2007-02-14 22:11:22.996577
         595 | TerrenceGunderson    | JonStephens |   2.99 | 2007-02-14 22:16:01.996577
         191 | JeanetteGreene       | JonStephens |   2.99 | 2007-02-14 22:23:12.996577
          95 | PaulaBryant          | JonStephens |   2.99 | 2007-02-14 22:41:17.996577
         197 | SuePeters            | JonStephens |   2.99 | 2007-02-14 22:43:41.996577
         512 | CecilVines           | MikeHillyer |   6.99 | 2007-02-14 22:57:03.996577
         210 | EllaOliver           | JonStephens |   2.99 | 2007-02-14 23:01:30.996577
         119 | SherryMarshall       | MikeHillyer |   7.99 | 2007-02-14 23:05:16.996577
         432 | EdwinBurk            | JonStephens |   5.99 | 2007-02-14 23:07:27.996577
         546 | KellyKnott           | MikeHillyer |   1.99 | 2007-02-14 23:10:43.996577
         196 | AlmaAustin           | MikeHillyer |   5.99 | 2007-02-14 23:13:47.996577
           1 | MarySmith            | MikeHillyer |   5.99 | 2007-02-14 23:22:38.996577
         368 | HarryArce            | MikeHillyer |   0.99 | 2007-02-14 23:25:11.996577
         173 | AudreyRay            | JonStephens |   2.99 | 2007-02-14 23:32:33.996577
         244 | ViolaHanson          | JonStephens |   6.99 | 2007-02-14 23:32:48.996577
         370 | WayneTruong          | JonStephens |   6.99 | 2007-02-14 23:33:58.996577
         186 | HollyFox             | MikeHillyer |   4.99 | 2007-02-14 23:47:05.996577
         561 | IanStill             | JonStephens |   2.99 | 2007-02-14 23:52:46.996577
		 
---------------------------------------------------------------------------------------------------------
select f.film_id,f.title,i.inventory_id
from film f left join inventory  i on  i.film_id = f.film_id
order by i.inventory_id;
film_id |            title            | inventory_id
---------+-----------------------------+--------------
       1 | Academy Dinosaur            |            1
       1 | Academy Dinosaur            |            2
       1 | Academy Dinosaur            |            3
       1 | Academy Dinosaur            |            4
       1 | Academy Dinosaur            |            5
       1 | Academy Dinosaur            |            6
       1 | Academy Dinosaur            |            7
       1 | Academy Dinosaur            |            8
       2 | Ace Goldfinger              |            9
       2 | Ace Goldfinger              |           10
       2 | Ace Goldfinger              |           11
       3 | Adaptation Holes            |           12
       3 | Adaptation Holes            |           13
       3 | Adaptation Holes            |           14
       3 | Adaptation Holes            |           15
       4 | Affair Prejudice            |           16
       4 | Affair Prejudice            |           17
       4 | Affair Prejudice            |           18
       4 | Affair Prejudice            |           19
       4 | Affair Prejudice            |           20
       4 | Affair Prejudice            |           21
       4 | Affair Prejudice            |           22
       5 | African Egg                 |           23
       5 | African Egg                 |           24
       5 | African Egg                 |           25
	   
---------------------------------------------------------------------
select f.film_id,f.title,i.inventory_id
from  inventory  i right join film f on  i.film_id = f.film_id
order by i.inventory_id;
ilm_id |            title            | inventory_id
---------+-----------------------------+--------------
       1 | Academy Dinosaur            |            1
       1 | Academy Dinosaur            |            2
       1 | Academy Dinosaur            |            3
       1 | Academy Dinosaur            |            4
       1 | Academy Dinosaur            |            5
       1 | Academy Dinosaur            |            6
       1 | Academy Dinosaur            |            7
       1 | Academy Dinosaur            |            8
       2 | Ace Goldfinger              |            9
       2 | Ace Goldfinger              |           10
       2 | Ace Goldfinger              |           11
       3 | Adaptation Holes            |           12
       3 | Adaptation Holes            |           13
       3 | Adaptation Holes            |           14
       3 | Adaptation Holes            |           15
       4 | Affair Prejudice            |           16
       4 | Affair Prejudice            |           17
       4 | Affair Prejudice            |           18
------------------------------------------------------------------------
select e.first_name || '' || e.last_name Employee,
m.first_name || '' ||  m.last_name Manager
from employee e inner join employee m on  m.employee_id = e.manager_id
order by Manager;
 employee    |    manager
----------------+----------------
 SauNorman      | AvaChristensen
 AnnaReeves     | AvaChristensen
 SalleyLester   | HassanConner
 KelsieHays     | HassanConner
 ToryGoff       | HassanConner
 AvaChristensen | WindyHays
 HassanConner   | WindyHays
 
--------------------------------------------------------------------------------
select c.*,p.* from customer c full outer join payment p 
on c.customer_id = p.customer_id;
customer_id | store_id | first_name  |  last_name   |                  email                   | address_id | activebool | create_date |       last_update       | active | payment_id | customer_id | staff_id | rental_id | amount |        payment_date
-------------+----------+-------------+--------------+------------------------------------------+------------+------------+-------------+-------------------------+--------+------------+-------------+----------+-----------+--------+----------------------------
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17503 |         341 |        2 |      1520 |   7.99 | 2007-02-15 22:25:46.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17504 |         341 |        1 |      1778 |   1.99 | 2007-02-16 17:23:14.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17505 |         341 |        1 |      1849 |   7.99 | 2007-02-16 22:41:45.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17506 |         341 |        2 |      2829 |   2.99 | 2007-02-19 19:39:56.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17507 |         341 |        2 |      3130 |   7.99 | 2007-02-20 17:31:48.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17508 |         341 |        1 |      3382 |   5.99 | 2007-02-21 12:33:49.996577
         342 |        1 | Harold      | Martino      | harold.martino@sakilacustomer.org        |        347 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17509 |         342 |        2 |      2190 |   5.99 | 2007-02-17 23:58:17.996577
         342 |        1 | Harold      | Martino      | harold.martino@sakilacustomer.org        |        347 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17510 |         342 |        1 |      2914 |   5.99 | 2007-02-20 02:11:44.996577
         342 |        1 | Harold      | Martino      | harold.martino@sakilacustomer.org        |        347 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17511 |         342 |        1 |      3081 |   2.99 | 2007-02-20 13:57:39.996577
         343 |        1 | Douglas     | Graf         | douglas.graf@sakilacustomer.org          |        348 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17512 |         343 |        2 |      1547 |   4.99 | 2007-02-16 00:10:50.996577
		 
		 ---------------------------------------------------------------------------------------------------

select * from language cross join category;


--------------------------------------------------------------------------------------------------------
subquery
select city from city where country_id in (
select country_id from country where country = 'Argentina');
      city
----------------------
 Almirante Brown
 Avellaneda
 Baha Blanca
 Crdoba
 Escobar
 Ezeiza
 La Plata
 Merlo
 Quilmes
 San Miguel de Tucumn
 Santa F
 Tandil
 Vicente Lpez
 -----------------------------------------------------------------
 select title from film where film_id in (
 select film_id from film_category where category_id = (
 select category_id from category where name = 'Action'));
      title
-------------------------
 Amadeus Holy
 American Circus
 Antitrust Tomatoes
 Ark Ridgemont
 Casualties Encino
 Barefoot Manchurian
 Berets Agent
 Bride Intrigue
 Bull Shawshank
 Caddyshack Jedi
 Campus Remember
 Celebrity Horn
 Clueless Bucket
 Crow Grease
 Dances None
 Darko Dorado
 Darn Forrester
 Devil Desire
 Dragon Squad
 Dream Pickup
 Drifter Commandments
 Easy Gladiator
 Entrapment Satisfaction
 Excitement Eve
 Fantasy Troopers
 Firehouse Vietnam
 Fool Mockingbird
 
 
 select film_id,title,length,rating from film f 
 where length > (select avg(length) from film where rating = f.rating);
 
 film_id |            title            | length | rating
---------+-----------------------------+--------+--------
     133 | Chamber Italian             |    117 | NC-17
       4 | Affair Prejudice            |    117 | G
       5 | African Egg                 |    130 | G
       6 | Agent Truman                |    169 | PG
      11 | Alamo Videotape             |    126 | G
      12 | Alaska Phantom              |    136 | PG
      13 | Ali Forever                 |    150 | PG
      16 | Alley Evolution             |    180 | NC-17
      19 | Amadeus Holy                |    113 | PG
      21 | American Circus             |    129 | R
      24 | Analyze Hoosiers            |    181 | R
      27 | Anonymous Human             |    179 | NC-17
      29 | Antitrust Tomatoes          |    168 | NC-17
      32 | Apocalypse Flamingos        |    119 | R
      33 | Apollo Teen                 |    153 | PG-13
      35 | Arachnophobia Rollercoaster |    147 | PG-13
      36 | Argonauts Town              |    127 | PG-13
      37 | Arizona Bang                |    121 | PG
      40 | Army Flintstones            |    148 | R
      41 | Arsenic Independence        |    137 | PG
      42 | Artist Coldblooded          |    170 | NC-17
     265 | Dying Maker                 |    168 | PG
      43 | Atlantis Cause              |    170 | G
      47 | Baby Hall                   |    153 | NC-17
      49 | Badman Dawn                 |    162 | R
	  -------------------------------------------------------------------
	  
select first_name,last_name from staff
where staff_id = Any(select manager_staff_id from store);

 first_name | last_name
------------+-----------
 Mike       | Hillyer
 Jon        | Stephens
(2 rows)
----------------------------------------------------------------------

select customer_id,first_name,last_name from customer
where customer_id > All (select customer_id from rental where rental_id
in (18,25))
order by customer_id;

 customer_id | first_name  |  last_name
-------------+-------------+--------------
          38 | Martha      | Gonzalez
          39 | Debra       | Nelson
          40 | Amanda      | Carter
          41 | Stephanie   | Mitchell
          42 | Carolyn     | Perez
          43 | Christine   | Roberts
          44 | Marie       | Turner
          45 | Janet       | Phillips
          46 | Catherine   | Campbell
          47 | Frances     | Parker
          48 | Ann         | Evans
          49 | Joyce       | Edwards
          50 | Diane       | Collins
          51 | Alice       | Stewart
          52 | Julie       | Sanchez
          53 | Heather     | Morris
          54 | Teresa      | Rogers
          55 | Doris       | Reed
          56 | Gloria      | Cook
          57 | Evelyn      | Morgan
          58 | Jean        | Bell
          59 | Cheryl      | Murphy
          60 | Mildred     | Bailey
          61 | Katherine   | Rivera
          62 | Joan        | Cooper
          63 | Ashley      | Richardson
          64 | Judith      | Cox
          65 | Rose        | Howard
          66 | Janice      | Ward
          67 | Kelly       | Torres
          68 | Nicole      | Peterson
          69 | Judy        | Gray
          70 | Christina   | Ramirez
          71 | Kathy       | James
		  
--------------------------------------------------------------
select customer_id,first_name,last_name from customer c where
exists
(select 1 from payment p where p.customer_id = c.customer_id and amount > 11);
 customer_id | first_name | last_name
-------------+------------+-----------
          13 | Karen      | Jackson
         116 | Victoria   | Gibson
         195 | Vanessa    | Sims
         204 | Rosemary   | Schmidt
         237 | Tanya      | Gilbert
         362 | Nicholas   | Barfield
         591 | Kent       | Arsenault
         592 | Terrance   | Roush
------------------------------------------------------------------------------------------------------
select * from top_rated_films
 union
 select * from most_popular_films;
          title           | release_year
--------------------------+--------------
 An American Pickle       |         2020
 The Dark Knight          |         2008
 Greyhound                |         2020
 The Shawshank Redemption |         1994
 The Godfather            |         1972
 12 Angry Men             |         1957
(6 rows)

select * from top_rated_films
union all
select * from most_popular_films;

      title           | release_year
--------------------------+--------------
 The Shawshank Redemption |         1994
 The Godfather            |         1972
 The Dark Knight          |         2008
 12 Angry Men             |         1957
 An American Pickle       |         2020
 The Godfather            |         1972
 The Dark Knight          |         2008
 Greyhound                |         2020
(8 rows)

select * from top_rated_films
intersect
select * from most_popular_films;
  title      | release_year
-----------------+--------------
 The Godfather   |         1972
 The Dark Knight |         2008
 
select * from top_rated_films
except
select * from most_popular_films;
         title           | release_year
--------------------------+--------------
 The Shawshank Redemption |         1994
 12 Angry Men             |         1957
 
 select * from most_popular_films
except
select * from top_rated_films;
  title        | release_year
--------------------+--------------
 An American Pickle |         2020
 Greyhound          |         2020
(2 rows)

select sum(
		case when rental_rate = 0.99 then 1 else 0 End
		) as "Economy",
		sum(
		case when rental_rate = 2.99 then 1 else 0 End
		) as "Mass",
		sum(
		case when rental_rate = 0.99 then 1 else 0 End
		) as "Premium"
from film;
		 Economy | Mass | Premium
---------+------+---------
     341 |  323 |     341
	 -------------------------------------------------------
	 
select title, rating,
case rating
	when 'G' then 'General Audiences'
	when 'PG' then 'Parental Guidance Suggested'
	when 'PG-13' then 'Parents strongly cautioned'
	when 'R' then 'Restricted'
	when 'NC-17' then 'Adults Only'
	End rating_description
from film;
            title            | rating |     rating_description
-----------------------------+--------+-----------------------------
 Chamber Italian             | NC-17  | Adults Only
 Grosse Wonderful            | R      | Restricted
 Airport Pollock             | R      | Restricted
 Bright Encounters           | PG-13  | Parents strongly cautioned
 Academy Dinosaur            | PG     | Parental Guidance Suggested
 Ace Goldfinger              | G      | General Audiences
 Adaptation Holes            | NC-17  | Adults Only
 Affair Prejudice            | G      | General Audiences
 African Egg                 | G      | General Audiences
 Agent Truman                | PG     | Parental Guidance Suggested
 Airplane Sierra             | PG-13  | Parents strongly cautioned
 Alabama Devil               | PG-13  | Parents strongly cautioned
 Aladdin Calendar            | NC-17  | Adults Only
 Alamo Videotape             | G      | General Audiences
 Alaska Phantom              | PG     | Parental Guidance Suggested
 Date Speed                  | R      | Restricted
 Ali Forever                 | PG     | Parental Guidance Suggested
 Alice Fantasia              | NC-17  | Adults Only
 Alien Center                | NC-17  | Adults Only
 Alley Evolution             | NC-17  | Adults Only
 Alone Trip                  | R      | Restricted
 Alter Victory               | PG-13  | Parents strongly cautioned
 Amadeus Holy                | PG     | Parental Guidance Suggested
 --------------------------------------------------------------------------------
 
 select sum(
		case when rating = 'G' then 1 else 0 End
		) as "G",
		sum(
		case when rating = 'PG' then 1 else 0 End
		) as "PG",
		sum(
		case when rating = 'PG-13' then 1 else 0 End
		) as "Pg-13",sum(
		case when rating = 'R' then 1 else 0 End
		) as "R",
		sum(
		case when rating = 'NC-17' then 1 else 0 End
		) as "NC-17"
from film;
   G  | PG  | Pg-13 |  R  | NC-17
-----+-----+-------+-----+-------
 178 | 194 |   223 | 195 |   210
(1 row)
----------------------------------------------------------------------------------------
select coalesce(address2,'pune') from address order by address2 desc;


-------------------------------------------------------------------------------------
Create table if not exists accounts(
user_id serial primary key,
username varchar(50) unique not null,
password varchar(50) not null,
email varchar(255) unique not null,
created_at timestamp not null,
last_login timestamp
);

select film_id,title,rental_rate
into table film_r from film
where rating = 'R' and rental_duration =5
order by title;

 film_id |          title          | rental_rate
---------+-------------------------+-------------
      54 | Banger Pinocchio        |        0.99
     115 | Campus Remember         |        2.99
     138 | Chariots Conspiracy     |        2.99
     159 | Closer Bang             |        4.99
     168 | Comancheros Enemy       |        0.99
     246 | Doubtfire Labyrinth     |        4.99
     287 | Entrapment Satisfaction |        0.99
     296 | Express Lonely          |        2.99
     310 | Fever Empire            |        4.99
     316 | Fire Wolves             |        4.99
     339 | Frogmen Breaking        |        0.99
     356 | Giant Troopers          |        2.99
     358 | Gilmore Boiled          |        0.99
     372 | Graceland Dynamite      |        4.99
     384 | Grosse Wonderful        |        4.99
     406 | Haunting Pianist        |        0.99
     427 | Homeward Cider          |        0.99
     447 | Ice Crossing            |        2.99
     493 | Kane Exorcist           |        0.99
     543 | Madigan Dorado          |        4.99
     640 | Opus Ice                |        4.99
     686 | Pluto Oleander          |        4.99
     707 | Quest Mussolini         |        2.99
     724 | Remember Diary          |        2.99
     747 | Roxanne Rebel           |        0.99
     788 | Ship Wonderland         |        2.99
     808 | Sling Luke              |        0.99
     833 | Splendor Patton         |        0.99
     838 | Stagecoach Armageddon   |        4.99
     840 | Stampede Disturbing     |        0.99
     856 | Streetcar Intentions    |        4.99
     858 | Submarine Bed           |        4.99
     863 | Sun Confessions         |        0.99
     884 | Terminator Club         |        4.99
     890 | Tights Dawn             |        0.99
     935 | Vanished Garden         |        0.99
     945 | Virginian Pluto         |        0.99
     967 | Weekend Personal        |        2.99
     995 | Yentl Idaho             |        4.99
     999 | Zoolander Fiction       |        2.99
	 
-------------------------------------------------------------------
create table fruits(
id serial primary key,
name varchar not null);

insert into fruits(name) values ('orange');
insert into fruits(id,name) values (Default,'grapes');

select currval(pg_get_serial_sequence('fruits','id'));

insert into fruits(name) values ('Jackfruit') returning id;
 
create sequence mysequence
increment 5
start 100;


create table order_details(
order_id serial,
item_id int not null,
item_text varchar not null,
price dec(10,2) not null,
primary key(order_id,item_id)
);

create sequence order_item_id
start 10
increment 10
minvalue 10
owned by order_details.item_id;

insert into order_details(order_id,item_id,item_text,price)
values
(100,nextval('order_item_id'),'DVD Player',100),
(100,nextval('order_item_id'),'Android Tv',500),
(100,nextval('order_item_id'),'Speaker',150),
(default,nextval('order_item_id'),'Min Wifi',300);


create table color(
color_id int generated by default as identity
(start with 10 increment by 10),
color_name varchar not null);

insert into color(color_name) values ('Red');
inset into color(color_name) values ('purple');	
 
 create table contacts(
 id serial primary key,
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 full_name varchar(101) generated always as (first_name || '' || last_name) stored,
 email varchar(300) unique);
 
 insert into contacts(first_name,last_name,email)
 values
 ('parag','Joshi','parag@gmail.com'),
 ('prachi','Joshi','parachi@gmail.com');
 
 
// some inbuilt functions 
select concat_ws('+','A','B','C');
 concat_ws
-----------
 A+B+C
(1 row)

select format('MY %s','Name is sandeep');
    format
--------------------
 MY Name is sandeep
(1 row)


select lpad('123',5,'5');
 lpad
-------
 55123
 
 
dvdrental=# select lpad('123',5,'543');
 lpad
-------
 54123
 
 
 