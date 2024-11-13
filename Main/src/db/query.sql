SELECT * from department;
SELECT * from role;
Select * from employee;
select d.department_name, 
r.title,r.salary,e.id, e.first_name,e.last_name
From department d
 left join role r on d.id = r.department_id 
 left join employee e on r.id =e.role_id;
