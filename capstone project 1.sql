
CREATE TABLE IF NOT EXISTS salesman(
salesman_id TEXT PRIMARY KEY,
name TEXT,
city TEXT,
commission TEXT
);

INSERT INTO salesman VALUES
('5001','James Hoog','New York','0.15'),
('5002','Nail Knite','Paris','0.13'),
('5005','Pit Alex','London','0.11'),
('5006','Mc Lyon','Paris','0.14'),
('5007','Paul Adam','Rome','0.13');

CREATE TABLE IF NOT EXISTS customer(
customer_id TEXT PRIMARY KEY,
cust_name TEXT,
city TEXT,
grade TEXT,
salesman_id TEXT
);

INSERT INTO customer VALUES
('3002','Nick Rimando','New York','100','5001'),
('3007','Brad Davis','New York','200','5001'),
('3005','Graham Zusi','California','200','5002'),
('3008','Julian Green','London','300','5002'),
('3004','Fabian Johnson','Paris','300','5006');

CREATE TABLE IF NOT EXISTS orders(
ord_no TEXT PRIMARY KEY,
purch_amt TEXT,
ord_date TEXT,
customer_id TEXT,
salesman_id TEXT
);

INSERT INTO orders VALUES
('70001','150.5','2012-10-05','3005','5002'),
('70002','65.26','2012-10-05','3002','5001'),
('70003','2480.4','2012-10-10','3007','5001');

SELECT customer.cust_name,salesman.name
FROM customer
JOIN salesman ON customer.salesman_id=salesman.salesman_id;

