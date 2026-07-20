# Homework(Medium)

Name: Tarun Sharma

UID: 24BCS10081

## Question
<img width="1142" height="699" alt="image" src="https://github.com/user-attachments/assets/47c0534d-1151-4ced-bc25-01cd89b0e09a" />
<img width="1150" height="678" alt="image" src="https://github.com/user-attachments/assets/56731431-e040-4542-8279-169edcd48aa3" />

## Solution (SQL Query)

SELECT COUNT(*) AS payment_count
FROM (
    SELECT
        *,
        LAG(transaction_timestamp) OVER (
            PARTITION BY merchant_id, credit_card_id, amount
            ORDER BY transaction_timestamp
        ) AS prev_time
    FROM transactions
) t
WHERE transaction_timestamp - prev_time <= INTERVAL '10 minutes';

## Output Screenshot

<img width="1592" height="816" alt="image" src="https://github.com/user-attachments/assets/b62c1870-35da-48a6-83d0-1d1b0ec1c88a" />

