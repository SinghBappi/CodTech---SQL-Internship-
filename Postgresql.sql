select * from employees;

create table employees(
    employee_id Numeric PRIMARY key,
    name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERic,
    hire_date date
)

-- it's blamk table 
--C:\Windows\System32>\copy employees(employee_id,name,department,salary,hire_date) from "C:\Users\bappi\OneDrive\Desktop\employees.csv" delimiter ',' CSV header;
--'\copy' is not recognized as an internal or external command,
--operable program or batch file.

--C:\Windows\System32>pssql -U postgre -d postgres
--'pssql' is not recognized as an internal or external command,
--operable program or batch file.

--C:\Windows\System32>psql -U postgre -d postgres
--Password for user postgre:

--psql: error: connection to server at "localhost" (::1), port 5432 failed: FATAL:  password authentication failed for user "postgre"

--C:\Windows\System32>psql -U postgres -d postgres
--Password for user postgres:

--psql (17.5)
--WARNING: Console code page (437) differs from Windows code page (1252)
  --       8-bit characters might not work correctly. See psql reference
    --     page "Notes for Windows users" for details.
--Type "help" for help.

--postgres=# \copy employees(employee_id, name, department, salary, hire_date) from "C:\Users\bappi\OneDrive\Desktop\employees.csv" delimiter ',' CSV header
--"C:/Users/bappi/OneDrive/Desktop/employees.csv: No such file or directory
--postgres=# \copy employees(employee_id, name, department, salary, hire_date) from 'C:\Users\bappi\OneDrive\Desktop\employees.csv' delimiter ',' CSV header
--COPY 6
-- postgres=#

-- by running these lines here we migrate data with table;
commit;





