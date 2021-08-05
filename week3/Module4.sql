SELECT DISTINCT
  city,
  state,
  zip
FROM Customer;


SELECT
  empName,
  department,
  phone,
  email
FROM Employee
WHERE phone LIKE '3-%';


SELECT *
FROM ResourceTbl
WHERE rate BETWEEN 10 AND 20
ORDER BY rate;


SELECT
  eventno,
  dateauth,
  status
FROM EventRequest
WHERE (status = 'Approved' OR status = 'Denied') AND dateauth BETWEEN '2018-07-01' AND '2018-07-31';


SELECT
  l.locNo,
  l.locName
FROM Location AS l, Facility AS f
WHERE l.facNo = f.facNo AND f.facName = 'Basketball arena';


SELECT
  ep.planno,
  count(epl.planno),
  sum(epl.numberfld)
FROM EventPlan AS ep, EventPlanLine AS epl
WHERE ep.planno = epl.planno
GROUP BY ep.planno;