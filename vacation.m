%In the matrix vac_days each column represents the number of vacations days an employee took in the last 3 months.
%In the matrix salaries each column represents that employee’s salary in the last 3 months
%Correct the salaries so that employees that took less then 3 days of vacation in a certain month get a 10% bonus to their salary.

vac_days = [1 5 10 0; 0 0 1 10 ; 0 0 5 7 ];
salaries = [6000 6000 7000 20000; 6000 6000 7000 20000; 7000 7000 7000 20000];
inds = find(vac_days < 3);
salaries(inds) = salaries(inds) * 110/100;
disp(salaries)

