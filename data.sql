#use Ecommerce;
# Insert UserRole

Insert into UserRole values(3, 'Admin');
Insert into UserRole values(1, 'Customer');
Insert into UserRole values(2, 'Seller');

# Insert Address
Insert into Address values(1, 'Sam', 'Garcia', 42, 'IU Hospital', 'G', 'Indianapolis', 'IN', 46202, '+13176788909');
Insert into Address values(2, 'Fred', 'Miller', 56, 'Indian Restaurant', '4', 'Indianapolis', 'IN', 46202, '+13176788973');
Insert into Address values(3, 'Richard', 'Davis', 56, 'Indian Restaurant', '4', 'Indianapolis', 'IN', 46202, '+13176788973');

# Insert Customer
Insert into Customers values (1, 'Sam', 'Garcia', 'sam@gmail.com', 'sam@1234');
Insert into Customers values (2, 'Fred', 'Miller', 'fred@gmail.com', 'fred@1234');
Insert into Customers values (3, 'Richard', 'Davis', 'richard@gmail.com', 'richard@1234');

# Insert Customer Address
Insert into CustomerAddresses values(1, 1, true);
Insert into CustomerAddresses values(2, 2, true);
Insert into CustomerAddresses values(3, 3, true);

# Insert Payment Options
Insert into PaymentOptions values(1, 'Card');
Insert into PaymentOptions values(2, 'E-Check');
Insert into PaymentOptions values(3, 'Paypal');

# Insert PaymentOptionDetails
Insert into PaymentOptionDetails values(1, 'Card Number');
Insert into PaymentOptionDetails values(1, 'Card Holder Name');
Insert into PaymentOptionDetails values(1, 'CVV');
Insert into PaymentOptionDetails values(1, 'Expiry Date');
Insert into PaymentOptionDetails values(2, 'Account Number');
Insert into PaymentOptionDetails values(2, 'Routing Number');
Insert into PaymentOptionDetails values(3, 'Paypal Number');

# Insert CustomerPaymentOption
Insert into CustomerPaymentOption values (1, 1, 1);
Insert into CustomerPaymentOption values (2, 1, 2);
Insert into CustomerPaymentOption values (3, 3, 3);

# Insert CustomerPaymentOptionDetails
Insert into CustomerPaymentOptionDetails values(1, 1, 'Card Number', '1234-5678-1234-5678');
Insert into CustomerPaymentOptionDetails values(1, 1, 'Card Holder Name', 'Sam Garcia');
Insert into CustomerPaymentOptionDetails values(1, 1, 'CVV', '123');
Insert into CustomerPaymentOptionDetails values(1, 1, 'Expiry Date', '03/26');
Insert into CustomerPaymentOptionDetails values(2, 1, 'Card Number', '5678-1234-5678-1234');
Insert into CustomerPaymentOptionDetails values(2, 1, 'Card Holder Name', 'Fred Miller');
Insert into CustomerPaymentOptionDetails values(2, 1, 'CVV', '324');
Insert into CustomerPaymentOptionDetails values(2, 1, 'Expiry Date', '07/25');
Insert into CustomerPaymentOptionDetails values(3, 3, 'Paypal Number', '123456789');

# Insert Category
Insert into Category values(1, 'Home', null);
Insert into Category values(2, 'Bedroom', 1);
Insert into Category values(3, 'Living Room', 1);
Insert into Category values(4, 'Cloths', null);
Insert into Category values(5, 'Pants', 4);
Insert into Category values(6, 'Shirts', 4);
Insert into Category values(7, 'Gift Cards', null);

# Insert Product Type
Insert into ProductType values(1, 'Physical');
Insert into ProductType values(2, 'Digital');

# Insert Seller
Insert into Seller values (1, 'Will', 'Smith', 1);
Insert into Seller values (2, 'James', 'Johnson', 2);
Insert into Seller values (3, 'Samuel', 'Williams', 3);
Insert into Seller values (4, 'James', 'Bond', 3);

# Insert Product
Insert into Product values(1, 'T-Shirt', 1, 6, 'Red Casual Shirt', 1);
Insert into Product values(2, 'Chinos', 1, 5, 'Blue Chinos', 2);
Insert into Product values(3, 'Shirt', 1, 6, 'Black Shirt', 1);
Insert into Product values(4, 'LED Lamp', 1, 3, 'LED Lamp', 3);
Insert into Product values(5, 'Chair', 1, 2, 'Wooeden Chair', 3);
Insert into Product values(6, 'Netflix Card', 2, 7, 'Netflix Account', 4);

# Insert Attributes
Insert into Attributes values(1, 'color');
Insert into Attributes values(2, 'size');
Insert into Attributes values(3, 'material');
Insert into Attributes values(4, 'validity');

# Insert Attribute values
Insert into AttributesValue values(1, 'Black', 1);
Insert into AttributesValue values(2, 'Red', 1);
Insert into AttributesValue values(3, 'Black', 1);
Insert into AttributesValue values(1, 'Small', 2);
Insert into AttributesValue values(2, 'Medium', 2);
Insert into AttributesValue values(3, 'Large', 2);
Insert into AttributesValue values(1, 'Cotton', 3);
Insert into AttributesValue values(2, 'Wool', 3);
Insert into AttributesValue values(3, 'Polyster', 3);
Insert into AttributesValue values(1, '6 months', 4);

# Insert Product Attributes
Insert into ProductAttributes values (1, 1);
Insert into ProductAttributes values (1, 2);
Insert into ProductAttributes values (2, 1);
Insert into ProductAttributes values (3, 2);
Insert into ProductAttributes values (4, 1);
Insert into ProductAttributes values (5, 2);
Insert into ProductAttributes values (6, 4);

# Insert ProductVariation
Insert into ProductVariation values(1, 1, 40, 1);
Insert into ProductVariation values(1, 2, 40, 3);
Insert into ProductVariation values(1, 3, 40, 10);
Insert into ProductVariation values(1, 4, 40, 2);
Insert into ProductVariation values(1, 5, 40, 1);
Insert into ProductVariation values(1, 6, 40, 1);
Insert into ProductVariation values(1, 7, 40, 5);
Insert into ProductVariation values(1, 8, 40, 1);
Insert into ProductVariation values(1, 9, 40, 3);
Insert into ProductVariation values(2, 1, 50, 1);
Insert into ProductVariation values(2, 2, 50, 2);
Insert into ProductVariation values(2, 3, 50, 3);
Insert into ProductVariation values(3, 1, 5, 5);
Insert into ProductVariation values(3, 2, 5, 7);
Insert into ProductVariation values(3, 3, 50, 2);
Insert into ProductVariation values(4, 1, 5, 5);
Insert into ProductVariation values(4, 2, 5, 7);
Insert into ProductVariation values(4, 3, 50, 2);
Insert into ProductVariation values(5, 1, 5, 5);
Insert into ProductVariation values(5, 2, 5, 7);
Insert into ProductVariation values(5, 3, 50, 2);
Insert into ProductVariation values(6, 1, 100, 20);

# Insert ProductVariationDetails
Insert into ProductVariationDetails values (1, 1, 1, 1);
Insert into ProductVariationDetails values (1, 1, 2, 1);
Insert into ProductVariationDetails values (1, 2, 1, 1);
Insert into ProductVariationDetails values (1, 2, 2, 2);
Insert into ProductVariationDetails values (1, 3, 1, 1);
Insert into ProductVariationDetails values (1, 3, 2, 3);
Insert into ProductVariationDetails values (1, 4, 1, 2);
Insert into ProductVariationDetails values (1, 4, 2, 1);
Insert into ProductVariationDetails values (1, 5, 1, 2);
Insert into ProductVariationDetails values (1, 5, 2, 2);
Insert into ProductVariationDetails values (1, 6, 1, 2);
Insert into ProductVariationDetails values (1, 6, 2, 3);
Insert into ProductVariationDetails values (1, 7, 1, 3);
Insert into ProductVariationDetails values (1, 7, 2, 1);
Insert into ProductVariationDetails values (1, 8, 1, 3);
Insert into ProductVariationDetails values (1, 8, 2, 2);
Insert into ProductVariationDetails values (1, 9, 1, 3);
Insert into ProductVariationDetails values (1, 9, 2, 3);
Insert into ProductVariationDetails values (2, 1, 1, 1);
Insert into ProductVariationDetails values (2, 2, 1, 2);
Insert into ProductVariationDetails values (2, 3, 1, 3);
Insert into ProductVariationDetails values (3, 1, 2, 1);
Insert into ProductVariationDetails values (3, 2, 2, 2);
Insert into ProductVariationDetails values (3, 3, 2, 3);
Insert into ProductVariationDetails values (4, 1, 1, 1);
Insert into ProductVariationDetails values (4, 2, 1, 2);
Insert into ProductVariationDetails values (4, 3, 1, 3);
Insert into ProductVariationDetails values (5, 1, 2, 1);
Insert into ProductVariationDetails values (5, 2, 2, 2);
Insert into ProductVariationDetails values (5, 3, 2, 3);
Insert into ProductVariationDetails values (6, 1, 1, 1);

#select * from customers;
#delete from Customers where email = 'fagun@gmail.com';
