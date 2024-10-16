#delete tables when exists
DROP TABLE IF EXISTS IReading;
DROP TABLE IF EXISTS ICustomer;


CREATE TABLE IF NOT EXISTS ICustomer (
    id UUID PRIMARY KEY,
    firstName VARCHAR(50), #50 because one word has around 30 characters and a puffer of 20
    lastName VARCHAR(50),
    birthDate DATE,
    gender CHAR(1)
);

CREATE TABLE IF NOT EXISTS IReading (
    id UUID PRIMARY KEY,
    comment VARCHAR(255),
    customer UUID,
    dateOfReading DATE DEFAULT CURRENT_DATE,
    kindOfMeter VARCHAR(50),
    meterCount DOUBLE,
    substitute BIT,
    type VARCHAR(50)
);


ALTER table IReading ADD CONSTRAINT fk_IReading_ICustomer
    FOREIGN KEY (customer) REFERENCES ICustomer(id);

# comment to execute: mysql -u root -p hv < C:\Kappelmeier\3FA071_Gruppe4\dateien\sql\create_tables.sql
