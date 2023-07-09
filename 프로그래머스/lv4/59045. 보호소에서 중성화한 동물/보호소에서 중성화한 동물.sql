-- 코드를 입력하세요
SELECT 
    A.ANIMAL_ID, A.ANIMAL_TYPE, A.NAME
FROM 
    (
        SELECT 
            ANIMAL_ID, ANIMAL_TYPE, NAME, SEX_UPON_INTAKE
        FROM 
            ANIMAL_INS
        WHERE 
            SEX_UPON_INTAKE LIKE '%Intact%'
    ) A
    INNER JOIN (
                SELECT 
                    ANIMAL_ID, ANIMAL_TYPE, NAME, SEX_UPON_OUTCOME
                FROM 
                    ANIMAL_OUTS
                WHERE 
                    SEX_UPON_OUTCOME NOT LIKE '%Intact%'
                ) B
    ON A.ANIMAL_ID = B.ANIMAL_ID;