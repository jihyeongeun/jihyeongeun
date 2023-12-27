-- 1행부터 5개의 매뉴 행 조회하기
SELECT
		 *
  FROM tbl_menu
 LIMIT 0,5; -- limit 시작인덱스, 조회할 행의 개수

-- 6행부터 5개의 메뉴 행 조회
SELECT
		 *
  FROM tbl_menu
 LIMIT 5,5;

-- offset 생략 가능
SELECT
		 *
  FROM tbl_menu
 LIMIT 5; -- =limit 0,5;
 
--  limit을 자주 쓰진 않지만 이후TOP-N분석이나 paging 처리를 할 때 사용된다.
 