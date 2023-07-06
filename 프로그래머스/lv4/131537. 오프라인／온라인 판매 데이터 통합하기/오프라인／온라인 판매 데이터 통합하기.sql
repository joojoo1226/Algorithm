-- 코드를 입력하세요     
WITH TMP AS(
                SELECT  SALES_DATE
                        ,   PRODUCT_ID
                        ,   USER_ID 
                        ,   SALES_AMOUNT 
                FROM    ONLINE_SALE  

                UNION ALL

                SELECT  SALES_DATE
                        ,   PRODUCT_ID
                        ,   NULL 
                        ,   SALES_AMOUNT 
                FROM    OFFLINE_SALE  
            )
            
SELECT  TO_CHAR(SALES_DATE,'YYYY-MM-DD') SALES_DATE
        ,   PRODUCT_ID
        ,   USER_ID 
        ,   SALES_AMOUNT 
FROM    TMP 
WHERE   1=1 
        AND TO_CHAR(SALES_DATE,'YYYYMM') = '202203'
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID