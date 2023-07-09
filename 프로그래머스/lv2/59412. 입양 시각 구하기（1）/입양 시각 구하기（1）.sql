-- 코드를 입력하세요
SELECT 
    TO_NUMBER(TO_CHAR(DATETIME, 'hh24')) AS HOUR
    , COUNT(*) AS COUNT
FROM 
    ANIMAL_OUTS 
WHERE 
    TO_NUMBER(TO_CHAR(DATETIME, 'hh24')) BETWEEN 9 AND 20
GROUP BY 
    TO_NUMBER(TO_CHAR(DATETIME, 'hh24'))
ORDER BY 
    HOUR ASC