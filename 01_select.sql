-- SELECT menu_code, menu_name, menu_price FROM tbl_menu;
SELECT
		 *
FROM tbl_menu;

DESC tbl_category;

SELECT
			 category_code
			,category_name
			,ref_category_code
	FROM tbl_category;
	
SELECT
		 menu_name
		,category_name
	FROM tbl_menu a
	JOIN tbl_category b ON (a.category_code = b.category_code);
	
	-- -------------------------------------------------------
SELECT 7+3;
SELECT 10*2;
SELECT 6%3, 6%4; -- % = 나머지 값 구하는 연산자	
SELECT NOW(); -- 현재시간
SELECT CONCAT('유',' ','관순');
-- 	별칭 달기
SELECT 10+3*9 AS '사칙연산' , 10*2 AS '곱';
SELECT 6%3 AS '나머지', 6%4 AS '나머지';
SELECT CONCAT('유',' ','관순') AS '이름';
-- 	특수기호가 들어간 별칭은 싱글쿼테이션(')이 반드시 필요함.
-- 	SELECT 10+3*9 사 칙 연 산 , 10*2 곱; -> error
-- 결과를 적는 문제를 내면 될 듯 
-- ---------------------------------------------------------------

