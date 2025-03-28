-- 1: What is the average monthly revenue per subscription type?
select avg(MonthlyRevenue), SubscriptionType from netflix.userbase
group by SubscriptionType;

-- 2: How many users joined in 2022?
select 
YEAR(JoinDate) as peryear,count(UserID)
from netflix.userbase
where year(JoinDate) = '2022'
group by year(JoinDate)

-- 3: Which country has the highest number of users?
select count(UserID),Country from netflix.userbase
group by country
order by count(UserID) desc limit 1

-- 4: What is the average age of users by subscription type?
select avg(Age),SubscriptionType from netflix.userbase
group by SubscriptionType

-- 5: How many users are using each type of device?
select count(UserID),Device from netflix.userbase
group by Device

-- 6: Which device is the most popular among users aged 30-40?
SELECT 
    Device, 
    COUNT(UserID) AS User_Count
FROM netflix.userbase
WHERE 
    Age BETWEEN 30 AND 40
GROUP BY Device
ORDER BY User_Count DESC
LIMIT 1;

-- 7: What is the total revenue generated from users in 2023?
select sum(MonthlyRevenue) as TotalRevenue
from netflix.userbase 
where year(JoinDate) = '2023';

-- 8: Which subscription type has the most users?
select count(UserID) as usercount, 
SubscriptionType from netflix.userbase
group by SubscriptionType
order by count(UserID) desc limit 1;

-- 9: How many users are there in each country by gender?
select count(UserID), Country, Gender from netflix.userbase
group by Gender, Country
order by Country

-- 10: How many users made their last payment in June 2023?
select count(UserID) from netflix.userbase 
where year(LastPaymentDate) = '2023'; 

-- 11: How many users are there in total?
select count(UserID) as total_users
from netflix.userbase;

-- 12: How many users joined in each year?
select count(UserID), Year(JoinDate) as curr_year
from netflix.userbase
group by curr_year;

-- 13: Which are the top 5 countries by user count?
select count(UserID), Country from netflix.userbase
group by Country
order by count(UserID) desc limit 5;

-- 14: What is the average join date for users?
select avg(JoinDate) from netflix.userbase

-- 15: What is the total monthly revenue from each country?
select sum(MonthlyRevenue) as total_revenue,Country from netflix.userbase
group by Country
order by total_revenue 






