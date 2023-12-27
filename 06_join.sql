-- 1) inner join: on 또는 using 뒤에 오는 join의 조건을 만족하여 매칭되는 결과들만 join됨
SELECT
       *
  FROM tbl_menu a 
  JOIN tbl_category b ON (a.category_code = b.category_code)
 WHERE b.category_code = 7; -- 조회 결과 없음(7번 카테고리(퓨전)는 존재 하지만 join에는 존재X)

-- 2) left join: join 키워드 기준 왼쪽 테이블의 행이 모두 나오도록 join

-- 카테고리가 없는 메뉴를 만들기 위해
-- a. 메뉴 카테고리에 null이 들어갈 수 있게 not null 제약 조건 해제
SELECT * FROM tbl_menu WHERE menu_code = 1;
ALTER TABLE tbl_menu CHANGE category_code category_code INTEGER DEFAULT NULL;
-- ALTER TABLE tbl_menu MODIFY COLUMN category_code INTEGER NOT NULL; -- NOT NULL로 재설정

-- b. 1번 메뉴의 메뉴 카테고리가 null로 변경 되게 설정
UPDATE tbl_menu
   SET category_code = 6
 WHERE menu_code = 1;
 
-- c. 1번 메뉴의 메뉴 카테고리가 없는 상태에서 inner join vs left join 비교하기   
SELECT
       *
  FROM tbl_menu a
  JOIN tbl_category b ON (a.category_code = b.category_code);
  
SELECT
       *
  FROM tbl_menu a
  LEFT JOIN tbl_category b ON (a.category_code = b.category_code);

-- 3) right join: join 키워드 기분 오늘쪽 테이블의 행이 모두 나오도록 join
SELECT
       *
  FROM tbl_menu a
  JOIN tbl_category b ON (a.category_code = b.category_code);
  
SELECT
       *
  FROM tbl_menu a
 RIGHT JOIN tbl_category b ON (a.category_code = b.category_code);

-- 4) cross join 
-- cross join은 의도했다기 보다는 on에 쓰는 join 조건을 잘 못 썼을 가능성이 높다.
SELECT
		 *
  FROM tbl_menu a
  JOIN tbl_category b ON (1=1);

SELECT
		 *
  FROM tbl_menu a
 CROSS JOIN tbl_category b;

-- 5) self join
--  self join은 하나의 테이블에 상위 개념과 하위 개념이 모두 들어있을 때 자기 자신 테이블을
-- join하게 되는 경우에 사용한다(ex: 신입사원vs사수(선배사원)
-- ,하위카테고리 vs 상위카테고리, 댓글 vs 대댓글)
SELECT 
		 *
  FROM tbl_category;
  
SELECT
		 a.category_name
	  , b.category_name
  FROM tbl_category a
  JOIN tbl_category b ON (a.category_code = b.category_code);





SELECT
		 *
  FROM tbl_menu JOIN tbl_category ON tbl_menu.category_code = tbl_category.category_code;
  
-- -------------------------------------------------------------------------------------
-- join 전 각각의 테이블을 열어서 분석 후에 join
-- join 이후 기준이 되는 table의 수에 맞게 결과 값 도출
SELECT
		 *
  FROM tbl_menu;
  
SELECT
		 *
  FROM tbl_category;
  
SELECT
		 menu_name
	  , category_name
  FROM tbl_menu
  JOIN tbl_category ON (tbl_menu.category_code = tbl_category.category_code);
  
-- table명도 별칭(alias)을 붙일 수 있다.
SELECT
		 menu_name
	  , category_name
  FROM tbl_menu a
  JOIN tbl_category b ON(a.category_code = b.category_code);
  
-- 두 table에 같은 column명이 있는 상태에서 join시 주의할 점
SELECT
		 menu_name
	  , category_name
  FROM tbl_menu a
  JOIN tbl_category b ON(a.category_code = b.category_code); -- 두 table이 동일한 column일 때는 별칭 필수.
  
SELECT 
		 menu_name
	  , category_name
--	  , category_code
	  , a.category_code
  FROM tbl_menu a
  JOIN tbl_category b ON (a.category_code = b.category_code); 
  
-- 관례 상  join시에는 쿼리에 사용되는 모든 column에 별칭을 다는 것을 원칙으로 한다.
SELECT
		 a.menu_name
	  , b.category_name
	  , a.category_code
  FROM tbl_menu a
  JOIN tbl_category b ON (a. category_code = b. category_code)
 WHERE b.category_code = 8;
-- 별칭은 a,b,c,d ... 순서대로 다는 것이 좋다.
-- using은 알고만 있자.





  
   
  
  
  
  
  
  