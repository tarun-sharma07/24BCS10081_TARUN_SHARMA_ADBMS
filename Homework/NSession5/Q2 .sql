WITH weekly_touches AS (
    SELECT DISTINCT
        contact_id,
        DATE_TRUNC('week', event_date) AS week_start
    FROM marketing_touches
),

numbered AS (
    SELECT
        contact_id,
        week_start,
        ROW_NUMBER() OVER (
            PARTITION BY contact_id
            ORDER BY week_start
        ) AS rn
    FROM weekly_touches
),

streaks AS (
    SELECT
        contact_id,
        COUNT(*) AS week_count
    FROM numbered
    GROUP BY
        contact_id,
        week_start - (rn * INTERVAL '1 week')
),

qualified_contacts AS (
    SELECT DISTINCT contact_id
    FROM streaks
    WHERE week_count >= 3
)

SELECT DISTINCT c.email
FROM crm_contacts c
JOIN qualified_contacts q
    ON c.contact_id = q.contact_id
WHERE c.contact_id IN (
    SELECT contact_id
    FROM marketing_touches
    WHERE event_type = 'trial_request'
);
