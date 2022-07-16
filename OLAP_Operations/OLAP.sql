CREATE TABLE sales(
    location varchar(20),
    product varchar(15),
    quarter varchar(5),
    date varchar(20),
    revenue int
);

INSERT INTO sales VALUES('vizag','moblies','q1','15-june 2K22',5000);
INSERT INTO sales VALUES('kakinada','moblies','q2','16-june 2K22',5500);
INSERT INTO sales VALUES('vizag','furniture','q3','17-june 2K22',6000);
INSERT INTO sales VALUES('vijayawada','furniture','q2','17-june 2K22',6000);
INSERT INTO sales VALUES('vzm','furniture','q1','16-june 2K22',5700);
INSERT INTO sales VALUES('vijayawada','lappy','q3','18-june 2K22',7000);
INSERT INTO sales VALUES('vzm','lappy','q2','19-june 2K22',5500);
INSERT INTO sales VALUES('kakinada','lappy','q3','19-june 2K22',6000);
INSERT INTO sales VALUES('vzm','moblies','q1','20-june 2K22',5500);
INSERT INTO sales VALUES('vizag','lappy','q3','21-june 2K22',7500);
INSERT INTO sales VALUES('kakinada','furniture','q1','21-june 2K22',6000);
INSERT INTO sales VALUES('vijayawada','moblies','q2','22-june 2K22',5000);
-- 12 records

SELECT * FROM sales;

-- Roll up operation
select location,sum(revenue) from sales group by rollup(location);

-- Sclicing operation
select product,sum(revenue) from sales where product='lappy' group by product;

-- Dicing operation
select product,sum(revenue) from sales where product='furniture' and location='vzm' group by product;




