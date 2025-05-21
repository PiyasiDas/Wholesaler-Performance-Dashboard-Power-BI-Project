
-- ============================================
-- SQL Project for Wholesaler Performance Dashboard
-- ============================================

-- 1. Create Tables

CREATE TABLE Wholesalers (
    WholesalerID INT PRIMARY KEY,
    WholesalerName VARCHAR(100),
    Region VARCHAR(50),
    LineOfBusiness VARCHAR(50)
);

CREATE TABLE SalesTransactions (
    TransactionID INT PRIMARY KEY,
    WholesalerID INT,
    Channel VARCHAR(50),
    Amount DECIMAL(12,2),
    TransactionDate DATE,
    FOREIGN KEY (WholesalerID) REFERENCES Wholesalers(WholesalerID)
);

CREATE TABLE Compensation (
    CompensationID INT PRIMARY KEY,
    WholesalerID INT,
    CompensationAmount DECIMAL(12,2),
    BonusEligible CHAR(1),
    CompensationDate DATE,
    FOREIGN KEY (WholesalerID) REFERENCES Wholesalers(WholesalerID)
);

-- 2. Insert Sample Data

INSERT INTO Wholesalers VALUES
(1, 'John Doe', 'North', 'Life Insurance'),
(2, 'Jane Smith', 'South', 'Health Insurance'),
(3, 'Michael Ray', 'East', 'Investments');

INSERT INTO SalesTransactions VALUES
(101, 1, 'Online', 150000.00, '2024-01-15'),
(102, 2, 'Branch', 120000.00, '2024-02-20'),
(103, 1, 'Online', 180000.00, '2024-03-10'),
(104, 3, 'Online', 90000.00, '2024-04-12'),
(105, 3, 'Branch', 70000.00, '2024-05-15');

INSERT INTO Compensation VALUES
(201, 1, 10000.00, 'Y', '2024-03-30'),
(202, 2, 8000.00, 'N', '2024-03-30'),
(203, 3, 9500.00, 'Y', '2024-05-20');

-- 3. Create Views

CREATE VIEW WholesalerPerformance AS
SELECT 
    w.WholesalerID,
    w.WholesalerName,
    w.Region,
    w.LineOfBusiness,
    SUM(st.Amount) AS TotalSales,
    SUM(c.CompensationAmount) AS TotalCompensation,
    MAX(c.BonusEligible) AS BonusEligible
FROM Wholesalers w
LEFT JOIN SalesTransactions st ON w.WholesalerID = st.WholesalerID
LEFT JOIN Compensation c ON w.WholesalerID = c.WholesalerID
GROUP BY w.WholesalerID, w.WholesalerName, w.Region, w.LineOfBusiness;

CREATE VIEW MonthlyPerformance AS
SELECT 
    w.WholesalerName,
    FORMAT(st.TransactionDate, 'yyyy-MM') AS Month,
    SUM(st.Amount) AS MonthlySales,
    SUM(c.CompensationAmount) AS MonthlyCompensation
FROM Wholesalers w
LEFT JOIN SalesTransactions st ON w.WholesalerID = st.WholesalerID
LEFT JOIN Compensation c ON w.WholesalerID = c.WholesalerID
GROUP BY w.WholesalerName, FORMAT(st.TransactionDate, 'yyyy-MM');
