-- 코드를 입력하세요
SELECT  CAR.HISTORY_ID
        , CAR.DAILY_FEE * CAR.DUR * (100-COALESCE(PLAN.DISCOUNT_RATE, 0)) / 100 AS FEE
FROM    (
            SELECT  H.HISTORY_ID HISTORY_ID
                    , C.CAR_TYPE CAR_TYPE
                    , C.DAILY_FEE DAILY_FEE
                    , H.END_DATE - H.START_DATE + 1 AS DUR
                    , CASE
                        WHEN H.END_DATE - H.START_DATE >= 90 THEN '90일 이상'
                        WHEN H.END_DATE - H.START_DATE >= 30 THEN '30일 이상'
                        WHEN H.END_DATE - H.START_DATE >= 7 THEN '7일 이상'
                    END AS DURATION_TYPE
            FROM    CAR_RENTAL_COMPANY_RENTAL_HISTORY H 
                    LEFT OUTER JOIN CAR_RENTAL_COMPANY_CAR C 
                        ON C.CAR_ID = H.CAR_ID
            WHERE   C.CAR_TYPE = '트럭'
        ) CAR
        LEFT OUTER JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN PLAN
            ON CAR.CAR_TYPE = PLAN.CAR_TYPE
            AND CAR.DURATION_TYPE = PLAN.DURATION_TYPE
ORDER BY FEE DESC, CAR.HISTORY_ID DESC;