-- Insert insertCustomers 
 delimiter // 
 CREATE PROCEDURE insertCustomers(IN cID int, IN fName varchar(32), IN lname varchar(32), IN email varchar(100), IN pass varchar(32))
 BEGIN 
 	INSERT INTO Customers VALUES(cID,fname,lname,email,pass);
 END//
 delimiter ;

-- Insert Address
 delimiter // 
 
 CREATE PROCEDURE insertAddress(
	IN fName varchar(32),
    IN lName varchar(32),
	IN str varchar(64),
    IN lmark varchar(64),
    IN apt varchar(16),
    IN ct varchar(16),
    IN st varchar(2),
    IN pcode int,
    IN ph varchar(24))
BEGIN
	INSERT INTO Address VALUES(fName,lName,str,lmark,apt,ct,st,pcode,ph);
END//

delimiter ;

-- Insert Seller
 
delimiter // 
 
CREATE PROCEDURE insertSeller(
	IN fName varchar(32),
    IN lName varchar(32),
	IN adId int)
BEGIN
	INSERT INTO Seller VALUES(fName,lName,adId);
END//

delimiter ;

-- Add PaymentType

delimiter // 
 
CREATE PROCEDURE insertPaymentType(
	IN PoName varchar(32))
BEGIN
	INSERT INTO PaymentOptions VALUES(PoName);
END//

delimiter ;

-- Add PaymentOptionDetails

delimiter // 
 
CREATE PROCEDURE insertPaymentOptionDetails(
	IN ONameId varchar(64),
    IN OName varchar(64))
BEGIN
	INSERT INTO PaymentOptionDetails VALUES(ONameId,O);
END//

delimiter ;

-- Add CustomerPaymentOptions

delimiter // 
 
CREATE PROCEDURE CustomerPaymentOptions(
	IN cId int,
    IN OpId int,
	IN adId int)
BEGIN
	INSERT INTO CustomerPaymentOptions VALUES(cId,OpId,adId);
END//

delimiter ;

-- Add CustomerPaymentOptionDetails

delimiter // 
 
CREATE PROCEDURE insertCPODetails(
	IN cId int,
    IN opId int,
    IN opName varchar(64),
	IN opNameValue varchar(64))
BEGIN
	INSERT INTO CustomerPaymentOptionDetails VALUES(cId,opId,opName,opNameValue);
END//

delimiter ;

-- Add category

delimiter // 
 
CREATE PROCEDURE insertCategory(
	IN cId int,
    IN cName varchar(64),
    IN pId int)
BEGIN
	INSERT INTO Category VALUES(cId,cName,pId);
END//

delimiter ;

-- Add Product


