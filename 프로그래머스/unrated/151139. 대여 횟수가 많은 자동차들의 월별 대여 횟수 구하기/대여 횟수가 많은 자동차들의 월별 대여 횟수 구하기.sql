-- 코드를 입력하세요
SELECT 
    EXTRACT(MONTH FROM R.START_DATE) AS MONTH
    , R.CAR_ID
    , COUNT(*) AS RECORDS
FROM 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY R
WHERE 
    R.CAR_ID IN (
                    SELECT 
                        CAR_ID
                    FROM 
                        CAR_RENTAL_COMPANY_RENTAL_HISTORY
                    WHERE 
                        START_DATE BETWEEN TO_DATE('2022-08-01', 'YYYY-MM-DD') 
                                    AND TO_DATE('2022-10-31', 'YYYY-MM-DD')
                    GROUP BY 
                        CAR_ID
                    HAVING 
                        COUNT(*) >= 5
                )
    AND R.START_DATE BETWEEN TO_DATE('2022-08-01', 'YYYY-MM-DD') 
    AND TO_DATE('2022-10-31', 'YYYY-MM-DD')
GROUP BY 
    EXTRACT(MONTH FROM R.START_DATE), R.CAR_ID
HAVING 
    COUNT(*) > 0
ORDER BY 
    EXTRACT(MONTH FROM R.START_DATE), R.CAR_ID DESC;