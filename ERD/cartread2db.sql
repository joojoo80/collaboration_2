
   CREATE DATABASE IF NOT EXISTS cartread2db;
   use cartread2db;
   
   CREATE TABLE IF NOT EXISTS car_total(
	year int AUTO_INCREMENT PRIMARY KEY,
	total int NOT NULL
    );   
    

    CREATE TABLE IF NOT EXISTS car_cctv(
	year int AUTO_INCREMENT PRIMARY KEY,
	local VARCHAR(20) NOT NULL,
	car_cctv int,
	car_accident int,
	FOREIGN KEY (year) REFERENCES car_total(year)
	);
          

    CREATE TABLE IF NOT EXISTS car_charg(
	year int AUTO_INCREMENT PRIMARY KEY,
	ecar int,
    car_charg int,
    FOREIGN KEY (year) REFERENCES car_total(year)
	);
          

    CREATE TABLE IF NOT EXISTS car_eco(
	year int AUTO_INCREMENT PRIMARY KEY,
	ecar int,
	hb_car int,
	hd_car int,
	FOREIGN KEY (year) REFERENCES car_total(year)
	);
           
           
	CREATE TABLE IF NOT EXISTS car_sales(
    year int AUTO_INCREMENT PRIMARY KEY,
    car_made VARCHAR(20) NOT NULL,
    car_rank CHAR(2) NOT NULL,
	brend VARCHAR(20) NOT NULL,
	total int,
	car_total int,
	ecar_total int,
	FOREIGN KEY (year) REFERENCES car_total(year)
	);
           

    CREATE TABLE IF NOT EXISTS car_total_m(
    year int AUTO_INCREMENT PRIMARY KEY,
    yymm int,
    total int,
	FOREIGN KEY (year) REFERENCES car_total(year)
	);
        
    CREATE TABLE IF NOT EXISTS ecar_total_m(
	year int AUTO_INCREMENT PRIMARY KEY,
	yymm int,
	total int,
	FOREIGN KEY (year) REFERENCES car_total(year)
	);
           
	CREATE TABLE IF NOT EXISTS ecar_ratio(
	year int AUTO_INCREMENT PRIMARY KEY,
    yymm int,
	total int,
	ecar int,
	ecar_ratio float,
	FOREIGN KEY (year) REFERENCES car_total(year)
	);
    
    DROP TABLE IF EXISTS car_cctv;
    DROP TABLE IF EXISTS car_charg;
    DROP TABLE IF EXISTS car_eco;
    DROP TABLE IF EXISTS car_sales;
    DROP TABLE IF EXISTS car_total;   
    DROP TABLE IF EXISTS car_total_m;
    DROP TABLE IF EXISTS ecar_total_m;
    DROP TABLE IF EXISTS ecar_ratio;
    
    
            