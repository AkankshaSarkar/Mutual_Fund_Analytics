SELECT COUNT(*) FROM fund_master;

SELECT COUNT(*) FROM nav_history;

SELECT * FROM fund_master LIMIT 5;

SELECT * FROM nav_history LIMIT 5;



-- 1
SELECT COUNT(*) FROM fund_master;

-- 2
SELECT category, COUNT(*)
FROM fund_master
GROUP BY category;

-- 3
SELECT risk_category, COUNT(*)
FROM fund_master
GROUP BY risk_category;

-- 4
SELECT AVG(nav)
FROM nav_history;

-- 5
SELECT MAX(nav)
FROM nav_history;

-- 6
SELECT MIN(nav)
FROM nav_history;

-- 7
SELECT amfi_code, AVG(nav)
FROM nav_history
GROUP BY amfi_code
LIMIT 10;

-- 8
SELECT amfi_code, MAX(nav)
FROM nav_history
GROUP BY amfi_code
LIMIT 10;

-- 9
SELECT fund_house, COUNT(*)
FROM fund_master
GROUP BY fund_house;

-- 10
SELECT category, AVG(expense_ratio_pct)
FROM fund_master
GROUP BY category;



-- 1. Total funds
SELECT COUNT(*) FROM fund_master;

-- 2. Total NAV records
SELECT COUNT(*) FROM nav_history;

-- 3. Top 5 funds by expense ratio
SELECT scheme_name, expense_ratio_pct
FROM fund_master
ORDER BY expense_ratio_pct DESC
LIMIT 5;

-- 4. Top 5 funds by 1 year return
SELECT amfi_code, return_1yr_pct
FROM fact_performance
ORDER BY return_1yr_pct DESC
LIMIT 5;

-- 5. Average NAV
SELECT AVG(nav) AS avg_nav
FROM nav_history;

-- 6. Highest NAV
SELECT MAX(nav) AS highest_nav
FROM nav_history;

-- 7. Lowest NAV
SELECT MIN(nav) AS lowest_nav
FROM nav_history;

-- 8. Fund count by risk category
SELECT risk_category, COUNT(*)
FROM fund_master
GROUP BY risk_category;

-- 9. Average expense ratio
SELECT AVG(expense_ratio_pct)
FROM fund_master;

-- 10. Total transactions
SELECT COUNT(*)
FROM fact_transactions;