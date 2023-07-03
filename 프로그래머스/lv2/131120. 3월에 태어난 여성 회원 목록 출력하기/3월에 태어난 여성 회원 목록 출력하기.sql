-- 코드를 입력하세요
SELECT  member_id, member_name, gender, to_char(date_of_birth,'YYYY-MM-DD') date_of_birth
FROM    member_profile
WHERE   tlno is not null
        AND to_char(date_of_birth, 'MM') = '03'
        AND gender = 'W'
ORDER BY member_id ASC;