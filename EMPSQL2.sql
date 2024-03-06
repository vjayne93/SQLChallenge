SELECT last_name, COUNT(*) as name_frequency
FROM employees
GROUP BY last_name
ORDER BY name_frequency DESC;
