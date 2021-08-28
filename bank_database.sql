CREATE DATABASE bank_database;
USE bank_database;
CREATE TABLE customer
   (
       custid VARCHAR(6),
       fname VARCHAR(30) NOT NULL,
       lname VARCHAR(30) NOT NULL,
       city VARCHAR(15) NOT NULL,
       mobileno VARCHAR(10) NOT NULL,
       occupation VARCHAR(10) NOT NULL,
       dob DATE NOT NULL,
      CONSTRAINT customer_custid_pk PRIMARY KEY(custid)   
   );
   
   CREATE TABLE branch
   (
    brid VARCHAR(6),
    brname VARCHAR(30),
    brcity VARCHAR(30),
    CONSTRAINT branch_brid_pk PRIMARY KEY(brid) 
   );
   
   CREATE TABLE account
   (
      acnumber VARCHAR(6),
      custid  VARCHAR(6),
      brid VARCHAR(6),
      opening_balance INT(7),
      acod DATE,
      actype VARCHAR(10),
      acstatus VARCHAR(10),
      CONSTRAINT account_acnumber_pk PRIMARY KEY(acnumber),
      CONSTRAINT account_custid_fk FOREIGN KEY(custid) REFERENCES customer(custid),
      CONSTRAINT account_brid_fk FOREIGN KEY(brid) REFERENCES branch(brid) 
    );
    
    CREATE TABLE trandetails
    (   
     tnumber VARCHAR(6),
     acnumber VARCHAR(6),
     dot DATE,
     medium_of_transaction VARCHAR(20),
     transaction_type VARCHAR(20),
     transaction_amount INT(7),    
     CONSTRAINT trandetails_tnumber_pk PRIMARY KEY(tnumber),
     CONSTRAINT trandetails_acnumber_fk FOREIGN KEY(acnumber) REFERENCES account(acnumber)  
    );
    
    CREATE TABLE loan
   (
   
    custid VARCHAR(6),
    brid VARCHAR(6),
    loan_amount INT(7),
    CONSTRAINT loan_customer_custid_brid_pk PRIMARY KEY(custid,brid),
    CONSTRAINT loan_custid_fk FOREIGN KEY(custid) REFERENCES  customer(custid),
    CONSTRAINT loan_brid_fk FOREIGN KEY(brid) REFERENCES  branch(brid)
   );
   
INSERT INTO customer VALUES('C00001','Akash','Singh','Moradabad','7414093948','Student','2002-01-09');
INSERT INTO customer VALUES('C00002','Rakesh','Singh','Moradabad','9797766355','Service','1970-06-20');
INSERT INTO customer VALUES('C00003','Suraj','Mehta','Jaipur','9765178901','Student','2000-06-24');
INSERT INTO customer VALUES('C00004','Suresh','Gandhi','Delhi','9876532109','Service','1976-11-03');
INSERT INTO customer VALUES('C00005','Naveen','Dhal','Cuttak','8976523190','Service','1976-09-19');
INSERT INTO customer VALUES('C00006','Meenakshi','Singh','Amroha','7651298321','HouseWife','1980-11-06');
INSERT INTO customer VALUES('C00007','Amit','Bhadana','Rohtak','9875189761','Service','1987-09-06');
INSERT INTO customer VALUES('C00008','Nisha','Patel','Mumbai','7954198761','Service','1980-12-03');
INSERT INTO customer VALUES('C00009','Shaili','Gaud','Aurangabad','9856198761','Student','2000-05-22');
INSERT INTO customer  VALUES('C00010','Shankar','Nair','Chennai','8765489076','Service','1976-07-12');

INSERT INTO branch VALUES('BR0001','Chandni Chowk','Delhi');
INSERT INTO branch VALUES('BR0002','Laxmi Nagar','Delhi');
INSERT INTO branch VALUES('BR0003','Janpat Main Branch','Delhi');
INSERT INTO branch VALUES('BR0004','Budha Bajar','Moradabad');
INSERT INTO branch VALUES('BR0005','Andheri','Mumbai');
INSERT INTO branch VALUES('BR0006','Vile parle','Mumbai');
INSERT INTO branch VALUES('BR0007','Kukas','Jaipur');
INSERT INTO branch VALUES('BR0008','Park Street','Kolkata');
INSERT INTO branch VALUES('BR0009','IITM','Chennai');
INSERT INTO branch VALUES('BR0010','Chandi','Cuttak');
INSERT INTO branch VALUES('BR0011','Sutgirni','Aurangabad');
INSERT INTO branch VALUES('BR0012','Thandi Sadak','Amroha');

INSERT INTO account VALUES('A00001','C00001','BR0004',1000,'2012-12-15','Saving','Active');
INSERT INTO account VALUES('A00002','C00002','BR0004',2000,'2012-06-12','Saving','Active');
INSERT INTO account VALUES('A00003','C00003','BR0007',1000,'2012-05-17','Saving','Active');
INSERT INTO account VALUES('A00004','C00002','BR0001',4000,'2013-01-27','Saving','Active');
INSERT INTO account VALUES('A00005','C00006','BR0006',1000,'2012-12-17','Saving','Active');
INSERT INTO account VALUES('A00006','C00007','BR0012',1000,'2010-08-12','Saving','Suspended');
INSERT INTO account VALUES('A00007','C00007','BR0006',6000,'2012-10-02','Saving','Active');
INSERT INTO account VALUES('A00008','C00001','BR0003',1000,'2009-11-09','Saving','Terminated');
INSERT INTO account VALUES('A00009','C00005','BR0007',5000,'2008-11-30','Saving','Terminated');
INSERT INTO account VALUES('A00010','C00004','BR0002',1000,'2013-03-01','Saving','Active');

INSERT INTO trandetails VALUES('T00001','A00001','2013-01-01','Cheque','Deposit',2000);
INSERT INTO trandetails VALUES('T00002','A00001','2013-02-01','Cash','Withdrawal',1000);
INSERT INTO trandetails VALUES('T00003','A00002','2013-01-01','Cash','Deposit',2000);
INSERT INTO trandetails VALUES('T00004','A00002','2013-02-01','Cash','Deposit',3000);
INSERT INTO trandetails VALUES('T00005','A00007','2013-01-11','Cash','Deposit',7000);
INSERT INTO trandetails VALUES('T00006','A00007','2013-01-13','Cash','Deposit',9000);
INSERT INTO trandetails VALUES('T00007','A00001','2013-03-13','Cash','Deposit',4000);
INSERT INTO trandetails VALUES('T00008','A00001','2013-03-14','Cheque','Deposit',3000);
INSERT INTO trandetails VALUES('T00009','A00001','2013-03-21','Cash','Withdrawal',9000);
INSERT INTO trandetails VALUES('T00010','A00001','2013-03-22','Cash','Withdrawal',2000);
INSERT INTO trandetails VALUES('T00011','A00002','2013-03-25','Cash','Withdrawal',7000);
INSERT INTO trandetails VALUES('T00012','A00007','2013-03-26','Cash','Withdrawal',2000);

INSERT INTO loan VALUES('C00001','BR0001',100000);
INSERT INTO loan VALUES('C00002','BR0002',200000);
INSERT INTO loan VALUES('C00009','BR0008',400000);
INSERT INTO loan VALUES('C00010','BR0009',500000);
INSERT INTO loan VALUES('C00001','BR0003',600000);
INSERT INTO loan VALUES('C00002','BR0001',600000);
   


