#use Ecommerce;

CREATE INDEX roleName_index ON UserRole (roleName) USING HASH;
CREATE INDEX customerId_index ON Customers (email) USING HASH;
CREATE INDEX cId_index ON Category (cId) USING HASH;
CREATE INDEX cName_index ON Category (cName) USING HASH;
CREATE INDEX pTypeValue_index ON ProductType (pTypeValue) USING HASH;
CREATE INDEX aName_index ON Attributes (aName) USING HASH;
CREATE INDEX productName_index ON Product (productName) USING BTREE;
CREATE INDEX sellerId_index ON Product (sellerId) USING HASH;
CREATE INDEX cId_index ON Product (cId) USING HASH;
CREATE INDEX price_index ON ProductVariation (price) USING BTREE;
CREATE INDEX orderDate_index ON Orders (orderDate) USING BTREE;
CREATE INDEX pvQty_index ON OrderDetails (productVariationId, quantity) USING BTREE;
CREATE INDEX paymentOptionId_index ON OrderDetails (paymentOptionId) USING BTREE;