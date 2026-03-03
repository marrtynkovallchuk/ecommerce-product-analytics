-- Brand conversion rate
-- Returns top 15 brands by view-to-purchase conversion rate (min 10k views)

WITH brand_views AS (
    SELECT
        brand,
        COUNT(*) AS views
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    WHERE event_type = 'view'
        AND brand IS NOT NULL
    GROUP BY brand
),

brand_purchases AS (
    SELECT
        brand,
        COUNT(*) AS purchases
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    WHERE event_type = 'purchase'
        AND brand IS NOT NULL
    GROUP BY brand
)

SELECT
    v.brand,
    views,
    p.purchases,
    SAFE_DIVIDE(p.purchases, views) AS conversion_rate
FROM brand_views v
JOIN brand_purchases p
    ON v.brand = p.brand
WHERE views > 10000
ORDER BY conversion_rate DESC
LIMIT 15;
