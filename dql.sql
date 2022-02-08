
use Ecommerce;

 Insert customer
 delimiter // 
 CREATE PROCEDURE insertCustomers(IN cID int, IN fName varchar(32), IN lname varchar(32), IN email varchar(100), IN pass varchar(32))
 BEGIN 
 	INSERT INTO Customers VALUES(cID,fname,lname,email,pass);
 END//
 delimiter ;

# Fetch customer


delimiter //
CREATE PROCEDURE getCustomerBy(IN @en char(32),OUT @temp int)
BEGIN
	SELECT customerId INTO @temp from Customers WHERE firstName=@en;
END 
delimiter;

set @email="Sam";
call getCustomerBy('Sam',@temp);
select @temp;


# Fetch categories
CREATE PROCEDURE productDescription(IN pId int, OUT @productDescription varchar(2000))
BEGIN
	SELECT productDesciption INTO @productDescription FROM Product where ProductId=pId;
END 
delimiter ;

# Fetch product variation
delimiter //
CREATE PROCEDURE productVariation(IN pId int)
BEGIN
	CREATE VIEW productVariationById as SELECT p.productName as ProductName, pvd.variationId as VariationId, pvd.price as Price, a.aName as AttributeName, av.aValue as AttributeValue 
    FROM ( (Product p INNER JOIN ProductVariation pv ON p.productId = pv.productId) INNER JOIN ProductVariationDetails pvd ON pv.variationId = pvd.variationId) INNER JOIN Attributes a ON pvd.attributeId = a.aId) INNER JOIN AttributeValues av ON pvd.attributeValueId = av.aValueId WHERE p.productId=1;
END 

	CREATE VIEW productVariationById as SELECT p.productName as ProductName, pvd.variationId as VariationId, pvd.price as Price, a.aName as AttributeName, av.aValue as AttributeValue 
    FROM ( (Product p INNER JOIN ProductVariation pv ON p.productId = pv.productId) INNER JOIN ProductVariationDetails pvd ON pv.variationId = pvd.variationId) INNER JOIN Attributes a ON pvd.attributeId = a.aId) INNER JOIN AttributeValues av ON pvd.attributeValueId = av.aValueId WHERE p.productId=1;
    
    select * from productVariationById;
delimiter ;

# Fetch shipping address of current user
delimiter //
CREATE PROCEDURE getShippingAddress(IN cId int)
BEGIN
	CREATE VIEW customerShippingAddress AS SELECT * from Address WHERE addressId = (select addressId from customerAddress where customerId=cId and preffered=TRUE);
END 
delimiter ;

# Fetch payment information of current user
delimiter //
CREATE PROCEDURE getPaymentOption(IN cId int)
BEGIN
	CREATE VIEW getPaymentOptionById AS SELECT * FROM (((PaymentOptionDetails pod INNER JOIN PaymentOptions po ON pod.optionId = po.id) INNER JOIN CustomerPaymentOption cpo ON pod.customerId = cpo.customerId and pod.optionId = cpo.optionId) INNER JOIN Address a ON cpo.billingAddressId = a.addressId) where pod.customerId=cId;  
END 
delimiter ;

# Save order details in all respective tables


select * from Customers;
