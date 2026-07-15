# Homework(Hard)

Name: Tarun Sharma

UID: 24BCS10081

# Question

The sales department has given you the sales figures for the first two months of 2023.

You've been tasked with determining the percentage of weekly sales on the first and last day of every week. Consider Sunday as the last day of the week and Monday as the first day of the week.

In your output, include the week number, percentage sales for the first day of the week, and percentage sales for the last day of the week. Both proportions should be rounded to the nearest whole number.

## early_sales

| invoiceno | stockcode | quantity | invoicedate | unitprice |
|-----------|-----------|----------|-------------|-----------|
| 570677 | 23008 | 2 | 2023-02-26 | 16.95 |
| 570521 | 21625 | 3 | 2023-02-21 | 6.95 |
| 538349 | 21985 | 1 | 2023-02-20 | 0.85 |
| 581405 | 20996 | 1 | 2023-02-19 | 0.19 |
| 580848 | 72799E | 1 | 2023-02-15 | 0.79 |
| 537685 | 22737 | 15 | 2023-02-14 | 1.65 |
| 574076 | 22483 | 1 | 2023-02-13 | 5.79 |
| 574262 | 22561 | 12 | 2023-02-13 | 1.65 |
| 574587 | 23356 | 4 | 2023-02-13 | 5.95 |
| 569545 | 21906 | 1 | 2023-02-12 | 13.29 |
| ... | ... | ... | ... | ... |
| 543451 | 22774 | 1 | 2023-01-02 | 2.46 |

> Note: Table truncated for brevity.

### SQL Query

```sql
SELECT
    EXTRACT(WEEK FROM invoicedate) AS week_number,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN EXTRACT(ISODOW FROM invoicedate) = 1
                THEN quantity * unitprice
                ELSE 0
            END
        ) / SUM(quantity * unitprice)
    ) AS first_day_percentage,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN EXTRACT(ISODOW FROM invoicedate) = 7
                THEN quantity * unitprice
                ELSE 0
            END
        ) / SUM(quantity * unitprice)
    ) AS last_day_percentage
FROM early_sales
WHERE EXTRACT(YEAR FROM invoicedate) = 2023
  AND EXTRACT(MONTH FROM invoicedate) IN (1, 2)
GROUP BY EXTRACT(WEEK FROM invoicedate)
ORDER BY week_number;
```

## Output Screenshot

<img width="812" height="621" alt="image" src="https://github.com/user-attachments/assets/5ac1dbee-1416-45d2-83b5-46110f7d2cec" />


## Explanation

- `EXTRACT(WEEK FROM invoicedate)` is used to determine the week number.
- `EXTRACT(ISODOW FROM invoicedate)` returns the day of the week:
  - `1` = Monday (first day of the week)
  - `7` = Sunday (last day of the week)
- `quantity * unitprice` calculates the sales value for each transaction.
- Conditional aggregation with `CASE WHEN` is used to calculate sales on Mondays and Sundays separately.
- These sales values are divided by the total weekly sales and multiplied by 100 to obtain percentages.
- `ROUND()` is used to round the percentages to the nearest whole number.

