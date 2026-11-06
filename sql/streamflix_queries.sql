-- StreamFlix SQL Analysis
-- Business questions from the Marketing team

-- Question 1: Which provinces have the highest churn rate?
SELECT province,
       COUNT(*) AS total_users,
       SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) AS cancellations,
       ROUND(100.0 * SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_rate
FROM subscribers
GROUP BY province
ORDER BY churn_rate DESC;

-- Question 2: How much monthly revenue do we lose per plan?
SELECT s.plan,
       COUNT(*) AS cancellations,
       SUM(p.monthly_price_ar) AS monthly_revenue_lost
FROM subscribers s
JOIN plans p ON s.plan = p.plan
WHERE s.churned = 'Yes'
GROUP BY s.plan
ORDER BY monthly_revenue_lost DESC;

-- Question 3: Which active users are at risk of churning? (less than 5 weekly hours)
SELECT user_id, plan, weekly_hours, tenure_months
FROM subscribers
WHERE churned = 'No' AND weekly_hours < 5
ORDER BY weekly_hours ASC;
