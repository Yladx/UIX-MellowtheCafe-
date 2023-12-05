
CREATE DATABASE MellowtheCafe;

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    UserPassword VARCHAR(255)
);

CREATE TABLE CoffeeMenu (
    CoffeeID INT PRIMARY KEY,
    CoffeeName VARCHAR(255),
    Category VARCHAR(20),
    Description TEXT,
    Price DECIMAL(8,2),
    ImageURL VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    CoffeeID INT,
    OrderDate TIMESTAMP,
    Quantity INT,
    TotalAmount DECIMAL(8,2),
    Status VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (CoffeeID) REFERENCES CoffeeMenu(CoffeeID)
);

CREATE TABLE Review (
    ReviewID INT PRIMARY KEY,
    UserID INT,
    CoffeeID INT,
    Rating INT,
    ReviewComment TEXT,
    Date TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (CoffeeID) REFERENCES CoffeeMenu(CoffeeID)
);
