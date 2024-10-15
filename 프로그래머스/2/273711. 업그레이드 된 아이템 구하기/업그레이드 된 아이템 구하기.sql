-- 코드를 작성해주세요
-- RARE
# SELECT  item_id
# FROM    item_info
# WHERE   rarity = 'RARE'

-- RARE upgrade
# SELECT  item_id
# FROM    item_tree
# WHERE   parent_item_id IN ( SELECT  item_id
#                             FROM    item_info
#                             WHERE   rarity = 'RARE') 

SELECT  ii.item_id, ii.item_name, ii.rarity
FROM    item_info ii
JOIN item_tree it ON ii.item_id = it.item_id
JOIN item_info parent ON it.parent_item_id = parent.item_id
WHERE   parent.rarity = 'RARE'
ORDER BY ii.item_id DESC