-- 코드를 입력하세요
SELECT 
    YEAR, MONTH, GENDER
    , COUNT(DISTINCT USER_ID) AS USERS
FROM 
    (
        SELECT 
            TO_CHAR(SALES_DATE,'YYYY') AS YEAR
            , TO_NUMBER(TO_CHAR(SALES_DATE,'MM')) AS MONTH
            , GENDER, USER_INFO.USER_ID 
        FROM 
            USER_INFO, ONLINE_SALE
        WHERE 
            USER_INFO.USER_ID = ONLINE_SALE.USER_ID 
            AND GENDER IS NOT NULL
    )
GROUP BY 
    YEAR, MONTH, GENDER
ORDER BY 
    YEAR, MONTH, GENDER