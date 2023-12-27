-- orderable _status = 'N'인 행들 조회하기
-- 주문 불가능한 메뉴 조회
SELECT
		 menu_name
	  , menu_code
	  , orderable_status
  FROM tbl_menu
 WHERE orderable_status = 'N';

-- DESC를 통한 컬럼명 빠르게 확인
DESC tbl_menu;

-- -------------------------------------------
-- '기타' 카테고리에 해당하지 않는 메뉴를 조회하시오.
-- 1)'기타'카테고리의 번호 파악하기
SELECT * FROM tbl_category;
SELECT * FROM tbl_category WHERE category_name = '기타'; -- category_code가 '10'번임을 알아냄
--  2)해당 번호를 가지지 않는 메뉴 조회
-- SELECT * FROM tbl_menu;
SELECT * FROM tbl_menu WHERE category_code <> 10;
SELECT * FROM tbl_menu WHERE category_code != 10;

-- ----------------------------------------------------------
-- 10,000원 이상의 메뉴 조회
SELECT * FROM tbl_menu WHERE menu_price >= 10000;
-- 10,000원 미만의 메뉴 조회
SELECT * FROM tbl_menu WHERE menu_price < 10000;
-- 10,000원 이상  12,000원 이하의 메뉴 조회
SELECT * FROM tbl_menu WHERE menu_price <=10000 OR menu_price<=12000;

-- 논리 연산자(=참과 거짓의 연산)
-- 조카가 타고 싶은 롤러코스터는 7세 이상, 100cm 이상만 가능(AND, 둘다 만족, 이면서, 그리고, 동시에)

-- ----------------------------------------------
-- 두개의 SELECT문을 블록 후 ctrl + F9 를 누르면 블록처리한 SELECT문의 결과 값을 모두 확인 가능하다.
SELECT
		 menu_code
	  , menu_name
	  , menu_price
	  , category_code
	  , orderable_status
  FROM tbl_menu
 WHERE menu_price >5000
 	 OR category_code = 10;
 	 
SELECT
		 menu_code
	  , menu_name
	  , menu_price
	  , category_code
	  , orderable_status
  FROM tbl_menu
 WHERE menu_price >5000
 	AND category_code = 10;
 	
--  	--------------------------------------------------------
-- between 연산자 활용하기
-- 가격이 5000원 이상 9000원 이하인 메뉴 전체 column 조회
-- AND 연산자를 통한 계산
SELECT 
		 *
  FROM tbl_menu
 WHERE menu_price >= 5000
   AND menu_price <= 9000;
   
--  BETWEEN 연산자를 통한 계산(이상, 이하만 가능! 초과, 미만 불가!)
SELECT
		 *
  FROM tbl_menu
 WHERE menu_price BETWEEN 5000 AND 9000
 ORDER BY menu_price;
 
 -- -------------------------------------------------------
 -- OR 연산자를 통한 계산
SELECT 
		 *
  FROM tbl_menu
 WHERE menu_price < 5000
    OR menu_price > 9000;
   
-- NOT BETWEEN 연산자를 통한 계산
SELECT
		 *
  FROM tbl_menu
 WHERE menu_price NOT BETWEEN 5000 AND 9000
 ORDER BY menu_price;
 --  BETWEEN = AND, NOT BETWEEN = OR 그리고 NOT은 COLUMN 앞, 뒤 어디나 가능

-- -----------------------------------------------------
-- 메뉴 중에 밥이 들어간 메뉴 조회
SELECT
		 *
  FROM tbl_menu
 WHERE menu_name LIKE '%밥%'
 ORDER BY menu_price;

-- 메뉴에 밥이 들어가지 않은 메뉴 조회
SELECT
		 *
  FROM tbl_menu
 WHERE menu_name NOT LIKE '%밥%'
 ORDER BY menu_price;
 
SELECT
		 *
  FROM tbl_menu
 WHERE NOT menu_name LIKE '%밥%'
 ORDER BY menu_price;
 
--  ------------------------------------
-- in 연산자
-- or을 활용한 '중식', '커피', '기타' 카테고리의 메뉴 조회하기
SELECT
		 *
  FROM tbl_menu
 WHERE category_code = 5
	 OR category_code = 8
	 OR category_code = 10;

-- in 연산자를 활용해 or과 같은 메뉴 조회하기	 
SELECT
		 *
  FROM tbl_menu
 WHERE category_code IN(5,8,10);
 
-- ---------------------------------------------
-- is null 연산자 활용
-- ref_category_code(상위 카테고리 번호)가 없는 카테고리 조회
SELECT
		 *
  FROM tbl_category
 WHERE ref_category_code IS NULL;

-- 반대
SELECT
		 *
  FROM tbl_category
 WHERE ref_category_code IS NOT NULL;
 
SELECT
		 *
  FROM tbl_category
 WHERE NOT ref_category_code IS NULL;
 
 
 
 
 
 
 