-- 코드를 입력하세요
SELECT
    category , count(category)
FROM    
    (
        SELECT substr(product_code,1,2) AS category
        FROM product
    )
GROUP BY category
ORDER BY category
