# Homework(Easy)

Name: Tarun Sharma

UID: 24BCS10081

# Question

Rank the top five customers by total purchase value. If multiple customers have the same total purchase value, treat them as ties and include all tied customers in the result. Display each customer's ID, total purchase value, and rank.
Ensure that the ranking does not skip numbers due to ties (e.g., if two customers share rank 2, the next rank should be 3).

### customer_purchase

| customer_id | total_purchase_value |
|------------|----------------------:|
| fb_001     | 3807.95              |
| amzn_002   | 9512.07              |
| goog_005   | 1644.58              |
| meta_006   | 5000.00              |
| uber_007   | 5000.00              |

### SQL Query

WITH customer_total AS (
    SELECT
        customer_id,
        SUM(purchase_value) AS total_purchase_value
    FROM customer_purchase
    GROUP BY customer_id
),
customer_rank AS (
    SELECT
        customer_id,
        total_purchase_value,
        DENSE_RANK() OVER (ORDER BY total_purchase_value DESC) AS rnk
    FROM customer_total
)

SELECT
    customer_id,
    total_purchase_value,
    rnk AS rank
FROM customer_rank
WHERE rnk <= 5
ORDER BY rank, customer_id;

<img width="1587" height="855" alt="image" src="https://github.com/user-attachments/assets/578c6841-9c08-4dc4-ba1a-359342635b67" />
