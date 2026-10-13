
USE BankingAnalytics;
GO

SELECT
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalTransactionAmount,
    AVG(Amount) AS AverageTransactionAmount,
    MIN(Amount) AS MinimumTransactionAmount,
    MAX(Amount) AS MaximumTransactionAmount
FROM dbo.Transactions;
GO

SELECT
    TransactionStatus,
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalAmount
FROM dbo.Transactions
GROUP BY TransactionStatus
ORDER BY TotalTransactions DESC;
GO

SELECT
    Channel,
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalAmount
FROM dbo.Transactions
GROUP BY Channel
ORDER BY TotalAmount DESC;
GO
  