# Homework(Easy)

Name: Tarun Sharma

UID: 24BCS10081

# Question

Identify the products that exist in the inventory but have never been sold. Return the product ID and product name for each unsold product.

### sales_transactions

| sale_id | product_id | quantity_sold | sale_date | region |
|---------|------------|---------------|-----------|--------|
| 1 | 127 | 4 | 2024-01-18 | us |
| 2 | 111 | 1 | 2024-02-15 | eu |
| 3 | 109 | 4 | 2024-04-04 | eu |
| 4 | 109 | 5 | 2024-02-08 | us |
| 5 | 114 | 2 | 2024-03-07 | apac |
| 6 | 100 | 1 | 2024-04-17 | apac |
| 7 | 100 | 4 | 2024-01-18 | eu |
| 8 | 133 | 4 | 2024-01-27 | apac |
| 9 | 105 | 4 | 2024-04-22 | us |
| 10 | 105 | 1 | 2024-04-10 | us |
| 11 | 131 | 3 | 2024-03-05 | eu |
| 12 | 140 | 5 | 2024-03-28 | apac |
| 13 | 141 | 5 | 2024-03-03 | apac |
| 14 | 149 | 5 | 2024-02-18 | apac |
| 15 | 149 | 5 | 2024-03-28 | us |
| 16 | 130 | 2 | 2024-02-15 | us |
| 17 | 143 | 3 | 2024-01-26 | eu |
| 18 | 143 | 5 | 2024-03-06 | apac |
| 19 | 116 | 4 | 2024-02-10 | us |
| 20 | 110 | 3 | 2024-01-23 | eu |
| 21 | 148 | 4 | 2024-04-08 | eu |
| 22 | 139 | 4 | 2024-01-02 | eu |
| 23 | 119 | 5 | 2024-01-21 | eu |
| 24 | 120 | 4 | 2024-01-05 | apac |
| 25 | 117 | 3 | 2024-04-17 | us |
| 26 | 110 | 2 | 2024-03-23 | apac |
| 27 | 115 | 5 | 2024-02-22 | apac |
| 28 | 115 | 5 | 2024-03-16 | us |
| 29 | 144 | 1 | 2024-02-10 | us |
| 30 | 144 | 2 | 2024-04-10 | us |
| 31 | 137 | 1 | 2024-01-26 | eu |
| 32 | 146 | 4 | 2024-02-14 | eu |
| 33 | 147 | 5 | 2024-03-23 | apac |
| 34 | 106 | 3 | 2024-03-04 | us |
| 35 | 103 | 1 | 2024-02-20 | eu |
| 36 | 125 | 3 | 2024-01-04 | eu |
| 37 | 125 | 4 | 2024-04-19 | us |
| 38 | 132 | 5 | 2024-03-22 | eu |
| 39 | 132 | 1 | 2024-01-15 | apac |
| 40 | 128 | 2 | 2024-04-20 | us |
| 41 | 128 | 3 | 2024-04-23 | apac |
| 42 | 135 | 5 | 2024-01-15 | eu |
| 43 | 135 | 3 | 2024-01-11 | apac |
| 44 | 142 | 4 | 2024-02-14 | apac |
| 45 | 104 | 4 | 2024-02-18 | apac |
| 46 | 121 | 2 | 2024-01-08 | us |
| 47 | 134 | 4 | 2024-04-04 | eu |
| 48 | 134 | 3 | 2024-03-03 | apac |
| 49 | 123 | 1 | 2024-04-28 | us |
| 50 | 123 | 1 | 2024-02-14 | apac |
| 51 | 101 | 0 | 2024-03-12 | eu |

### inventory_current_stock

| product_id | product_name | vendor | stock_quantity |
|------------|-------------|---------|---------------|
| 100 | Smartwatch Band | Amazon | 45 |
| 101 | Portable Charger | Facebook | 120 |
| 102 | Noise Cancelling Headphones | Apple | 90 |
| 103 | Webcam | Facebook | 60 |
| 104 | USB-C Cable | Google | 60 |
| 105 | Portable Charger | Google | 120 |
| 106 | HDMI Adapter | Facebook | 90 |
| 107 | USB-C Cable | Facebook | 75 |
| 108 | USB-C Cable | Google | 120 |
| 109 | Noise Cancelling Headphones | Microsoft | 120 |
| 110 | Webcam | Google | 30 |
| 111 | Bluetooth Speaker | Apple | 45 |
| 112 | Portable Charger | Amazon | 45 |
| 113 | Smartwatch Band | Microsoft | 75 |
| 114 | Portable Charger | Apple | 90 |
| 115 | Laptop Stand | Amazon | 120 |
| 116 | Laptop Stand | Microsoft | 60 |
| 117 | USB-C Cable | Amazon | 75 |
| 118 | HDMI Adapter | Facebook | 45 |
| 119 | Smartwatch Band | Facebook | 120 |
| 120 | USB-C Cable | Amazon | 30 |
| 121 | Portable Charger | Facebook | 75 |
| 122 | Gaming Keyboard | Apple | 60 |
| 123 | Webcam | Google | 90 |
| 124 | USB-C Cable | Amazon | 90 |
| 125 | Gaming Keyboard | Microsoft | 120 |
| 126 | Laptop Stand | Amazon | 30 |
| 127 | Noise Cancelling Headphones | Apple | 60 |
| 128 | Wireless Mouse | Microsoft | 120 |
| 129 | Portable Charger | Facebook | 60 |
| 130 | Bluetooth Speaker | Amazon | 45 |
| 131 | Smartwatch Band | Microsoft | 75 |
| 132 | Portable Charger | Microsoft | 45 |
| 133 | Gaming Keyboard | Google | 75 |
| 134 | Bluetooth Speaker | Microsoft | 45 |
| 135 | HDMI Adapter | Facebook | 60 |
| 136 | Bluetooth Speaker | Microsoft | 60 |
| 137 | Bluetooth Speaker | Microsoft | 120 |
| 138 | Laptop Stand | Amazon | 75 |
| 139 | Wireless Mouse | Apple | 45 |
| 140 | Webcam | Apple | 30 |
| 141 | Noise Cancelling Headphones | Microsoft | 75 |
| 142 | Smartwatch Band | Facebook | 75 |
| 143 | Noise Cancelling Headphones | Amazon | 75 |
| 144 | Bluetooth Speaker | Microsoft | 30 |
| 145 | Laptop Stand | Amazon | 30 |
| 146 | Noise Cancelling Headphones | Facebook | 60 |
| 147 | Noise Cancelling Headphones | Facebook | 75 |
| 148 | Noise Cancelling Headphones | Apple | 45 |
| 149 | Laptop Stand | Apple | 30 |

### SQL Query

SELECT i.product_id, i.product_name FROM inventory_current_stock i 
LEFT JOIN sales_transactions s
ON i.product_id = s.product_id
WHERE s.product_id IS NULL;

## Output Screenshot

<img width="1597" height="820" alt="image" src="https://github.com/user-attachments/assets/68cc5c05-a5b1-4bb2-b1e3-1af75f762470" />
<img width="1599" height="222" alt="image" src="https://github.com/user-attachments/assets/0f5ebb49-6b50-43f3-b87f-1e9e681a3526" />

