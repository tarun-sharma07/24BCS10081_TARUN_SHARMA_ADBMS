# Homework(Medium)

Name: Tarun Sharma

UID: 24BCS10081

# Question

You are analyzing a social network dataset at Google. Your task is to find mutual friends between two users, Karl and Hans. There is only one user named Karl and one named Hans in the dataset.

The output should contain 'user_id' and 'user_name' columns.

## users

| user_id | user_name |
|---------|-----------|
| 1 | Karl |
| 2 | Hans |
| 3 | Emma |
| 4 | Emma |
| 5 | Mike |
| 6 | Lucas |
| 7 | Sarah |
| 8 | Lucas |
| 9 | Anna |
| 10 | John |

## friends

| user_id | friend_id |
|---------|-----------|
| 1 | 3 |
| 1 | 5 |
| 2 | 3 |
| 2 | 4 |
| 3 | 1 |
| 3 | 2 |
| 3 | 6 |
| 4 | 7 |
| 5 | 8 |
| 6 | 9 |
| 7 | 10 |
| 8 | 6 |
| 9 | 10 |
| 10 | 7 |
| 10 | 9 |

### SQL Query

SELECT u.user_id,
       u.user_name
FROM users u
JOIN friends f1
    ON u.user_id = f1.friend_id
JOIN friends f2
    ON u.user_id = f2.friend_id
WHERE f1.user_id = (
        SELECT user_id
        FROM users
        WHERE user_name = 'Karl'
      )
  AND f2.user_id = (
        SELECT user_id
        FROM users
        WHERE user_name = 'Hans'
      );

## Output Screenshot

<img width="796" height="220" alt="image" src="https://github.com/user-attachments/assets/6a267a67-d90a-4f7b-8fd7-d778d048c401" />
