--Afficher l’id, first_name, last_name des employés qui n’ont pas d’équipe. 
SELECT id.Employee, id.first_name, id.last_name FROM Employee WHERE id_team IS NULL;


--Afficher l’id, first_name, last_name des employés qui n’ont jamais pris de congé de leur vie.
SELECT e.id, e.first_name, e.last_name
FROM Employee e
LEFT JOIN Leave l ON e.id = l.employee_id
WHERE l.id IS NULL;


--Afficher les congés de tel sorte qu’on voie l’id du congé, le début du congé, la fin du congé, le nom & prénom de l’employé qui prend congé et le nom de son équipe.
SELECT 
    l.id AS congé_id,
    l.start_date,
    l.end_date,
    e.first_name || ' ' || e.last_name AS employé,
    t.name AS équipe
FROM Leave l
JOIN Employee e ON l.employee_id = e.id
LEFT JOIN Team t ON e.team_id = t.id
ORDER BY l.start_date;



--Affichez par le nombre d’employés par contract_type, vous devez afficher le type de contrat, et le nombre d’employés associés.
SELECT 
    contract_type,
    COUNT(*) AS nombre_employés
FROM Employee
GROUP BY contract_type
ORDER BY nombre_employés DESC;



--Afficher le nombre d’employés en congé aujourd'hui. La période de congé s'étend de start_date inclus jusqu’à end_date inclus.
SELECT COUNT(*) AS employés_en_congé_aujourd_hui
FROM Leave l
WHERE CURRENT_DATE BETWEEN l.start_date AND COALESCE(l.end_date, CURRENT_DATE);




--Afficher l’id, le nom, le prénom de tous les employés + le nom de leur équipe qui sont en congé aujourd’hui. Pour rappel, la end_date est incluse dans le congé, l’employé ne revient que le lendemain. 
SELECT 
    e.id,
    e.first_name,
    e.last_name,
    t.name AS équipe
FROM Employee e
JOIN Leave l ON e.id = l.employee_id
LEFT JOIN Team t ON e.team_id = t.id
WHERE CURRENT_DATE BETWEEN l.start_date AND COALESCE(l.end_date, CURRENT_DATE)
ORDER BY e.last_name;