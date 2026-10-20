DECLARE
  v_ctl CLOB := q'[
LOAD DATA
INFILE 'salaries.csv'
APPEND INTO TABLE sf_salaries
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  id,
  employee_name,
  job_title,
  base_pay,
  overtime_pay,
  other_pay,
  benefits,
  total_pay,
  total_pay_benefits,
  year,
  notes,
  agency,
  status
)
]';
BEGIN
  NULL;
END;
/
