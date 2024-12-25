
#----------- Store Proceture ------------
use Parks;

DELIMITER $$
  create procedure large_salary1()
begin
		
		select * from employee_salary where salary<=50000;
        select * from employee_demographics where gender='Male';


end $$
DELIMITER ;

call large_salary1;
DELIMITER $$
  create procedure large_salary2(id int)
begin
 select * from employee_demographics where employee_id=id;
 
end ;

call large_salary2(5);
