182. Duplicate Emails

SELECT email
FROM (SELECT email,count(*)
FROM Person
GROUP BY email
HAVING COUNT(*)>1) t


181. Employees Earning More Than Their Managers

SELECT e1.name as Employee
FROM Employee e1
JOIN Employee e2
WHERE e1.managerId = e2.id
AND e1.salary > e2.salary

