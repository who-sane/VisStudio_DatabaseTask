if ('$(DeployTestData)' = 'true')

insert into assignment values ('04/05/2002')
insert into assignment values ('07/09/2021')
insert into assignment values ('01/02/2012')


insert into Office values 
(001, '04/05/2002', '16 Boardfish Road', 'sample desc'),
(002, '07/09/2021', '17 Hollywood Ave', 'sample desc'),
(003, '01/02/2012', '1 Lacuve` Blve', 'sample desc')


insert into Employee values 
(0001, '04/05/2002', 'Humphrey','Stand'),
(0002, '07/09/2021', 'Finn','Barr' ),
(0003, '01/02/2012', 'Steve','Jobless')

SELECT * FROM Office
GO
