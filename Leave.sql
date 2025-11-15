CREATE TABLE Leave(
id auto_increment ,
    start_date date,
    end_date date,
    id_employee int,
    CONSTRAINT fk_employee FOREIGN KEY (id_employee) REFERENCES Employee(id)
);

--INSERT

INSERT INTO Leave (id;start_date, end_date, employee_id) VALUES
(1,'2025-11-20', '2025-11-25', 1),  -- Andry : 5 jours
(2,'2025-12-24', '2026-01-05', 3),  -- Lala : Noël + Nouvel An (13 jours)
(3,'2025-10-15', '2025-10-18', 2),  -- Mamy : 3 jours
(4'2025-12-01', '2025-12-03', 5),  -- Solo : 2 jours
(5'2026-01-10', '2026-01-15', 7),  -- Nirina : 5 jours
(6'2025-11-01', NULL, 4),          -- Tiana : congé en cours (ex: maternité)
(7'2025-09-05', '2025-09-07', 6),  -- Feno : week-end prolongé
(8'2025-12-20', '2025-12-28', 10); -- Toky : 8 jours