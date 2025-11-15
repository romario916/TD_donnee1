CREATE TABLE Employee(
    id auto_increment ,
    fist_name varchar(100) not null ,
    last_name varchar(100) not null,
    contract_type varchar(50),
    salary int,
    id_team int,
    CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES Team(id)
);

--INSERT 
INSERT INTO Employee (id,first_name, last_name, contract_type, salary, team_id) VALUES
(1,'Andry', 'RAKOTO', 'CDI', 2500000, 1),        
(2,'Mamy', 'RAZAFY', 'CDD', 1800000, 1),        
(3,'Lala', 'RANDRIA', 'CDI', 3200000, 2),       
(4,'Tiana', 'RABEMANANTSOA', 'CDI', 2800000, 2), 
(5,'Solo', 'RANDRIANASOLO', 'CDI', 2200000, 3),  
(6,'Feno', 'RAZAKARIVONY', 'CDD', 1500000, 1),   
(7,'Nirina', 'ANDRIAMBOAVONJY', 'CDI', 3500000, 2),
(8,'Hery', 'RAKOTONDRABE', 'CDI', 2700000, 3),
(9,'Voahangy', 'RABEARISON', 'CDD', 1600000, 1),
(10,'Toky', 'ANDRIANARIVELO', 'CDI', 3000000, 2);