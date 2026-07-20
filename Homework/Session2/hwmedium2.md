# Homework(Medium)

Name: Tarun Sharma

UID: 24BCS10081

## Question
<img width="1142" height="670" alt="image" src="https://github.com/user-attachments/assets/f78a635c-cecc-4aa6-b654-8323c76aac22" />
<img width="1166" height="520" alt="image" src="https://github.com/user-attachments/assets/3b83e657-7eff-485a-abef-96be11ba881c" />

## Solution (SQL Query)

SELECT
    user_id,
    tweet_date,
    ROUND(
        AVG(tweet_count) OVER (
            PARTITION BY user_id
            ORDER BY tweet_date
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ),
        2
    ) AS rolling_avg_3d
FROM tweets
ORDER BY user_id, tweet_date;

## Output Screenshot

<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/09b7c4e5-e5d6-4501-9def-29438ce27c87" />
