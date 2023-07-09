-- 코드를 입력하세요
SELECT 
    A.HOUR, COUNT(B.TIME) AS COUNT
FROM 
    (
        SELECT 
            LEVEL-1 AS HOUR 
        FROM 
            DUAL 
        CONNECT BY 
            level <25
    ) A
        LEFT OUTER JOIN (
                            SELECT TO_CHAR(DATETIME, 'hh24') as TIME 
                            FROM ANIMAL_OUTS
                        ) B 
        ON A.HOUR = B.TIME
GROUP BY 
    A.HOUR
ORDER BY 
    A.HOUR
