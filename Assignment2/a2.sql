SET search_path TO A2;
-- Add below your SQL statements. 
-- For each of the queries below, your final statement should populate the respective answer table (queryX) with the correct tuples. It should look something like:
-- INSERT INTO queryX (SELECT … <complete your SQL query here> …)
-- where X is the correct index [1, …,10].
-- You can create intermediate views (as needed). Remember to drop these views after you have populated the result tables query1, query2, ...
-- You can use the "\i a2.sql" command in psql to execute the SQL commands in this file.
-- Good Luck!

--Query 1 statements
INSERT INTO query1
    select player.pname,champion.cname,tournament.tname
      from champion player tournament
     where champion.pid = (select pid
                  from  player country tournament
                  where plyaer.cid = country.cid and country.cid = tournament.cid
     ) and champion.tid = tournament.pid
     order by player.pname ASC;

--Query 2 statements
INSERT INTO query2
    
    select tournament.tname,courtCapacity as totalCapacity
    from tournament court
    where courtCapacity in  
    max(select tournament.tid as tmptid ,sum(court.capacity) as  courtCapacity
      from tournament court
     where tournament.tid = court.tid) and tournament.tid = tmptid
    order by tournament.tname ASC;

--Query 3 statements
INSERT INTO query3
    select p1id p1name p2id p2name 
      from 
     where condition
    
--Query 4 statements
INSERT INTO query4

--Query 5 statements
INSERT INTO query5

--Query 6 statements
INSERT INTO query6

--Query 7 statements
INSERT INTO query7

--Query 8 statements
INSERT INTO query8
  
  
  
  select 
    from (select player as p1 from event player where player.pid = event.winid) join (select player as p2 from event player where player.pid = event.lossid)
  where (player.pid = p1id and player.cid = country.cid) = (player.pid = p2id and player.cid = country.cid) 
  
  
  
  order by p1name DESC;

  SELECT
  FROM (SELECT event.winid as p1 , event.lossid as p2
    FROM event,player,country
  GROUP BY (event.eid)
 
  where p1 = player.pid and country .cid 


--Query 9 statements
INSERT INTO query9
  SELECT cname count() as champions

  order by cname DESC


select 

from champion,player,tournament

where champion.tid = tournament.tid and player.pid = champion.pid and player.cid = country.cid
group by country
having max()
--Query 10 statements
INSERT INTO query10
    
    select player.pname
    from player record event
    where player.pid = record.pid and record.win > record.loss and event.year = '2014' and (event.winid = player.pid or event.lossid = player.pid) 
    intersect
    select player.pname, 
       from player event
     where record.pid = player.pid and (event.winid = player.pid or event.lossid = player.pid) and (select ) > 200
     group by pid
     having avg(event.duriation) > 200
     order by player.pname DESC;

