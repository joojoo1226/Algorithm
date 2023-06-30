-- 코드를 입력하세요
SELECT  b.title, 
        b.board_id, 
        r.reply_id, 
        r.writer_id, 
        r.contents, 
        to_char(r.created_date, 'yyyy-mm-dd') CREATED_DATE
FROM    used_goods_board b, used_goods_reply r
WHERE   b.board_id = r.board_id
        AND to_char(b.created_date, 'yyyy-mm') = '2022-10'
ORDER BY r.created_date ASC, b.title ASC