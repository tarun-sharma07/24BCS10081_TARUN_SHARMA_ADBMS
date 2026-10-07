SELECT
    transaction_date,
    user_id,
    COUNT(product_id) AS purchase_count
FROM user_transactions
WHERE transaction_date = (
    SELECT MAX(transaction_date)
    FROM user_transactions ut2
    WHERE ut2.user_id = user_transactions.user_id
)
GROUP BY transaction_date, user_id
ORDER BY transaction_date;
