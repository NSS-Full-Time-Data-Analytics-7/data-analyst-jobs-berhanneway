--Q1
SELECT COUNT(*) FROM data_analyst_jobs;
--- 1793 Rows
Q2
SELECT *
FROM data_analyst_jobs
LIMIT 10;
---ExxonMobil
Q3
SELECT count(title)
FROM data_analyst_jobs
Where location = 'TN'or location = 'KY';
--- 21 posting
Q4
SELECT count(title)
FROM data_analyst_jobs
Where location = 'TN'or location = 'KY';
--- 27 posting in TN or KY
Q5
SELECT COUNT(title) 
FROM data_analyst_jobs 
Where location = 'TN' and "star_rating "  > 4;
-- 3
Q6
SELECT ROUND(AVG("star_rating "), 1)AS avg_rating, location AS state 
FROM data_analyst_jobs
Group by location
Order by avg_rating desc;
-- NE - 4.2 
Q7
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE review_count between 500 and 1000;
--- 151 posting review count b/n 500 and 1000
Q8
SELECT count(DISTINCT(title))
FROM data_analyst_jobs

---881 uniqe job title
Q9
SELECT count(DISTINCT(title))
FROM data_analyst_jobs
WHERE location = 'CA';
--- 230 

SELECT ROUND(AVG("star_rating "), 2) AS avg_rating, company, location
FROM data_analyst_jobs
Where review_count > 5000
Group BY company, location 
order BY avg_rating desc;
--Q9
SELECT ROUND(AVG("star_rating "),2), COUNT(distinct company) AS company_review_5000 
FROM data_analyst_jobs
Where review_count > 5000;
--184 companies with avg_rating =3.91
Q10
SELECT AVG("star_rating ") As avg_rating, company
FROM data_analyst_jobs
Where review_count > 5000
GROUP BY company
ORDER BY avg_rating desc;
--General Motors, Unilever, Microsoft, Nike, American Express and Kaiser Permanents -- rating 4.2
Q11
SELECT COUNT(distinct title)
FROM data_analyst_jobs
where title ilike '%Analyst%';
--- 774
Q12
SELECT title
FROM data_analyst_jobs
where title not ilike '%Analyst%' and title not ilike '%Analytics%'
--Bonus
select domain, COUNT(title) AS SQL
FROM data_analyst_jobs
Where  skill ilike '%sql%' and days_since_posting > 21 and domain is not null
Group by domain 
ORDER BY SQL desc
--Internet and Software -62jobs
--Bank and Financial Service -61jobs
--Consulting and Business Service - 57jobs
--Health care 52jobs
