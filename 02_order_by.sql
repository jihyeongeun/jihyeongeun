SELECT
		 menu_code
	  , menu_name
	  , menu_price
  FROM tbl_menu
 ORDER BY menu_name ASC; -- ascending : 오름차순, descending : 내림차순
 
 -- 내림차순
 SELECT
		 menu_code
	  , menu_name
	  , menu_price
  FROM tbl_menu
 ORDER BY menu_name DESC;
 
--  컬럼의 순번을 활용한 정렬
SELECT
		 menu_price
	  , menu_name
  FROM tbl_menu
 ORDER BY 1 ASC;
 
--  별칭을 활용한 정렬
SELECT
		 menu_price AS 'mp'
	  , menu_name AS 'mn'
  FROM tbl_menu
 ORDER BY mp DESC; -- 별칭으로 정렬할 때는 별칭명에 single quatation(')를 사용하면 안된다.
 
--  컬럼의 복수개로 정렬
SELECT
		 menu_code
	  , menu_price
	  , menu_name
  FROM tbl_menu
 ORDER BY 2 DESC, 1 ASC;  -- 2번으로 내림차순 후 같은 이름일때 가격으로 오름차순 정렬
 
 -- -----------------------------------------------------------------------------
--  Field
SELECT FIELD('a','b','z','a'); -- 2번째 이후 인자 중에 첫번째 인자의 값이 위치하는 값이 나옴, 빈칸도 인식

-- table에서 조회 시 field 활용
SELECT
		 FIELD(orderable_status, 'N', 'Y')
	  , orderable_status
  FROM tbl_menu;
  
-- field를 활용한 order by
SELECT
		 menu_name
	  , orderable_status
  FROM tbl_menu
 ORDER BY FIELD(orderable_status, 'N', 'Y');
 
--  null 값에 대한 정렬
--  1) 오름차순 시 : NULL 값이 먼저 나옴
SELECT 
		 *
  FROM tbl_category
 ORDER BY ref_category_code ASC;
  
-- 2) 내림차순 시 : NULL 값이 나중에 나옴
SELECT
		 *
  FROM tbl_category
 ORDER BY ref_category_code DESC;
 
--  3)오름차순에서 NULL이 나중에 나오도록 바꿈
SELECT
		 *
  FROM tbl_category
 ORDER BY -ref_category_code DESC; -- DESC를 통해 NULL을 마지막으로 보낸 후 -ref_category_code를 통해 내림차순을 오름차순으로 변경함.
-- 4)내림차순에서 NULL이 먼저 나오도록 바꿈
SELECT
		 *
  FROM tbl_category
 ORDER BY -ref_category_code ASC; -- ASC를 통해 NULL을 처음으로 보낸 후 -ref_category_code를 통해 오름차순을 내림차순으로 변경함.
