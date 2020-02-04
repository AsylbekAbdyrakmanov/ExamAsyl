SELECT first_name,last_name, gender, date_of_birthday FROM devs WHERE date_of_birthday < '1995' and gender = 'male' ;
SELECT first_name, last_name FROM promanag UNION SELECT first_name, last_name FROM devs;
SELECT devs.first_name, devs.last_name FROM devs JOIN promanag ON devs.id_promanag = promanag.id WHERE promanag.first_name ='Sooronbai';
SELECT first_name, last_name, date_of_birthday FROM devs WHERE date_of_birthday > '1995-01-01';
SELECT count(*) as count_of_female_and_male FROM devs where gender = 'female' UNION (SELECT count(*) FROM devs WHERE gender = 'male');
SELECT YEAR(date_of_birthday) AS year, count(date_of_birthday) FROM devs GROUP BY date_of_birthday HAVING date_of_birthday > '1997' ;
SELECT first_name  FROM devs where gender = 'female' GROUP BY first_name UNION (SELECT count(gender) FROM devs WHERE gender = 'female');
