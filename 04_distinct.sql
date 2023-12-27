--  distinct 활용
-- distinct는 column을 묶어서 나타낸다.

SELECT
		 DISTINCT category_code
  FROM tbl_menu;
  -- distinct 사용 시에는 일반 column을 사용할 수 없다.
SELECT
		 DISTINCT category_code
--   , menu_name  
  FROM tbl_menu;
  
-- null 값을 포함한 column의 distinct
SELECT
		 DISTINCT ref_category_code
  FROM tbl_category;
  
-- null 값을 나중으로 보내는 정렬
SELECT
		 DISTINCT ref_category_code
  FROM tbl_category
 ORDER BY 1 DESC;
 
-- distinct가 포함된 정렬은 별칭을 활용해야함.
SELECT
		 DISTINCT ref_category_code AS 'rcc'
  FROM tbl_category
 ORDER BY -rcc DESC;
 
--  ------------------------------------------
 SELECT
		 DISTINCT ref_category_code
  FROM tbl_category
 ORDER BY -ref_category_code DESC;
 
 -- --------------------------------------------
 -- column이 2개 이상인 정렬
--  column 2개 이상도 distinct로 묶을 수는 있지만 좋은 형태는 아님.
-- column 2개 이상부터는 이후 배울 group by절을 통해 중복 제거를 하자.
SELECT 
		 DISTINCT category_codeㄴ
	  , orderrable_status
  FROM tbl_menu;

 