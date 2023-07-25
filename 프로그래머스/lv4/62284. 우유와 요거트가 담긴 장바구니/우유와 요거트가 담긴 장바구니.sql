-- 코드를 입력하세요
SELECT 
    distinct c1.cart_id
from 
    CART_PRODUCTS c1
    ,CART_PRODUCTS c2
where 
    c1.cart_id = c2.cart_id
    and c1.name = 'Milk' and c2.name = 'Yogurt'
order by cart_id