-- 코드를 입력하세요
SELECT  i.REST_ID, i.REST_NAME, i.FOOD_TYPE, i.FAVORITES, i.ADDRESS, 
        ROUND(AVG(r.REVIEW_SCORE),2) AS SCORE
FROM    REST_INFO i JOIN REST_REVIEW r ON i.REST_ID = r.REST_ID
GROUP BY i.REST_ID, i.REST_NAME, i.FOOD_TYPE, i.FAVORITES, i.ADDRESS
HAVING  SUBSTR(ADDRESS,1,2) = '서울'
ORDER BY ROUND(AVG(r.REVIEW_SCORE),2) DESC, i.FAVORITES DESC ;