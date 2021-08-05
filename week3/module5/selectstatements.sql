SELECT
  er.eventno,
  er.dateheld,
  count(*) AS eventPlanCount
FROM EventRequest AS er INNER JOIN EventPlan AS ep ON er.eventno = ep.eventno
WHERE ep.workdate BETWEEN '2018-12-01' AND '2018-12-31'
GROUP BY er.eventno
HAVING eventPlanCount > 1;

SELECT
  ep.planno,
  ep.eventno,
  ep.workdate,
  ep.activity
FROM EventPlan AS ep INNER JOIN EventRequest AS er ON ep.eventno = er.eventno
  INNER JOIN Facility AS f ON er.facno = f.facNo
WHERE (f.facName = 'Basketball arena') AND (ep.workdate BETWEEN '2018-12-01' AND '2018-12-31');


SELECT 
    er.eventno, er.dateheld, er.datereq, er.estcost, er.status
FROM
    EventRequest AS er
        INNER JOIN
    EventPlan AS ep ON er.eventno = ep.eventno
        INNER JOIN
    Employee AS e ON ep.empno = e.empNo
        INNER JOIN
    Facility AS f ON er.facno = f.facNo
WHERE
    (f.facName = 'Basketball arena')
        AND (er.dateheld BETWEEN '2018-10-01' AND '2018-12-31')
        AND (e.empName = 'Mary Manager');
      

SELECT
  epl.planno,
  epl.lineno,
  epl.numberfld AS 'Number',
  l.locName AS 'Location Name',
  epl.timestart,
  epl.timeend
FROM EventPlanLine AS epl INNER JOIN EventPlan AS ep ON epl.planno = ep.planno
  INNER JOIN Location AS l ON epl.locno = l.locNo
  INNER JOIN ResourceTbl AS r ON epl.resno = r.resno
  INNER JOIN Facility AS f ON l.facNo = f.facNo
WHERE (f.facName = 'Basketball arena') AND (ep.activity = 'Operation') AND
      (ep.workDate BETWEEN '2018-10-01' AND '2018-12-31')
ORDER BY epl.planno;



