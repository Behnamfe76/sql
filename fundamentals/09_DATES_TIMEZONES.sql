-- showing the current timezone
SHOW TIMEZONE;

-- setting the timezone to UTC+3
-- SET TIMEZONE = 'UTC';

-- showing current time 
SELECT NOW();
SELECT CURRENT_TIME;
SELECT CURRENT_DATE;
SELECT TO_CHAR(CURRENT_DATE, 'dd,mm,yyyy');


-- difference between two dates
SELECT now() - '1800/01/01';
-- calculating age
SELECT AGE(DATE '2000-01-01');

SELECT EXTRACT(day from DATE '2000-01-01') as DAy;

SELECT DATE_TRUNC( 'year', DATE '2000-01-21');

-- intervals
SELECT * FROM orders 
where orderdate <= now() - INTERVAL '30 days';
-- INTERVAL '1 year 2 months 3 days'
-- INTERVAL '2 weeks ago'
-- INTERVAL '1 year 3 hours 20 minutes'


-- creating a table in postgres database
-- create table timezones(
--     ts TIMESTAMP WITHOUT time ZONE,
--     tz TIMESTAMP WITH time ZONE
-- )

-- insert INTO timezones VALUES(
--     timestamp without time zone '2000-01-01 10:00:00-05',
--     timestamp with time zone '2000-01-01 10:00:00-05',
-- )

-- 