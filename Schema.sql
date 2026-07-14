CREATE TABLE Orders (
    OrderID VARCHAR(20),
    Date INT,
    CustomerID VARCHAR(20),
    Product VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(100),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(20),
    TrackingNumber VARCHAR(20),
    ItemsInCart INT,
    CouponCode VARCHAR(20),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);