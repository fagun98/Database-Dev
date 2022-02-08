#use Ecommerce;

-- Finding Customer using Email

SET @email='sam@gmail.com';
CREATE OR REPLACE VIEW CurrentCustomer AS SELECT * from Customers WHERE email='sam@gmail.com';

select * from CurrentCustomer;

-- View for Category

-- One problem: If we create a parent category, child should exist. 
-- No alone child is shown 

CREATE OR REPLACE VIEW AllCategories AS SELECT c1.cName AS SubCategory, c2.cName AS Category FROM Category c1, Category c2 WHERE c2.cid=(SELECT parentCid FROM Category WHERE parentCid=c1.parentCid LIMIT 1);

select * from Allcategories;
select * from Category;

-- View for Products with all the details 
-- JOIN of three tables: Products + ProductType + Category 

CREATE OR REPLACE VIEW allProducts AS SELECT p.productId as productId, p.productName as productName, pt.pTypeValue as ProductTypeName, c.cName as CategoryName, c.cId as CategoryId from ((Product p INNER JOIN Category c ON p.cId=c.cID) INNER JOIN ProductType pt ON p.productType=pt.pType);

select * from allProducts;
select * from Product;

-- View for All the product Variation 

CREATE OR REPLACE VIEW productVariationById as SELECT p.productName as ProductName, pvd.variationId as VariationId, pv.price as Price, a.aName as AttributeName, av.aValue as AttributesValue 
FROM ((((Product p INNER JOIN ProductVariation pv ON p.productId = pv.productId) INNER JOIN ProductVariationDetails pvd ON pv.variationId = pvd.variationId) INNER JOIN Attributes a ON pvd.attributeId = a.aId) INNER JOIN AttributesValue av ON pvd.attributeValueId = av.aValueId) WHERE p.productId=1;

select * from productVariationByID;

SELECT * FROM ATTRIBUTES;
SELECT * FROM ATTRIBUTESVALUE;

DELETE FROM ATTRIBUTESVALUE WHERE AVALUEID=3 AND AID=1;


-- View for Customers Preffered Shipping Address on CustomerId

CREATE OR REPLACE VIEW customerShippingAddress AS SELECT * from Address a WHERE a.addressId = (select c.addressId from customerAddresses c where c.preferred = 1 and c.customerId=1); 

select * from customerShippingAddress;


-- Customer Payment Options

CREATE OR REPLACE VIEW CurrentCustomerPaymentOptionDetails AS select * from CustomerPaymentOptionDetails cpod, Address a where cpod.customerId=1 and a.addressId = (select billingAddressId from CustomerPaymentOption cpo where cpo.customerId = cpod.customerId);

select * from CurrentCustomerPaymentOptionDetails; 


