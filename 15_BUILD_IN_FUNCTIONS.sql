-- =============================================
-- BUILD IN FUNCTIONS                           
-- =============================================

-- -----------------------------------
-- 1. 문자열 관련 함수
-- -----------------------------------

-- ASCII(아스키 코드), CHAR(숫자)
SELECT ASCII('A'), CHAR(65);
SELECT ASCII('a'), CHAR(97);

-- BIT_LENGTH(문자열), CHAR_LENGTH(문자열), LENGTH(문자열)
-- 영어, 숫자, 특수기호 제하고 한 문자당 3바이트 할당
SELECT
		 BIT_LENGTH('한글')
	  , CHAR_LENGTH('한글')
	  , LENGTH('한글');

-- format(숫자, 소수점 자릿수)
SELECT FORMAT(12312342435,3);

-- bin(숫자), oct(숫자), hex(숫자)
SELECT BIN(65), OCT(65), HEX(65);

-- repeat(문자열, 횟수)
SELECT repeat('재미져',5);

-- replace(문자열, 찾을 문자열, 바꿀 문자열)
SELECT REPLACE('마리아DB', '마리아', 'Maria');

-- reverse(문자열)
SELECT REVERSE('happiness');

-- space(길이)
SELECT CONCAT('제 포켓몬은', SPACE(3), '이고', '속성은', SPACE(6), '입니다');

-- substring(문자열, 시작위치, 길이)
SELECT 
		 SUBSTRING('열심히 db공부를 해봅시다', 5, 4) -- 5번째 문자부터 4번째까지
	  , SUBSTRING('열심히 db공부를 해봅시다',11); -- 11번째 문자부터 끝까지
	  
-- substring_index(문자열, 구분자, 횟수)
SELECT
		 SUBSTRING_INDEX('010-123-1234', '-', 2)
	  , SUBSTRING_INDEX('010-123-1234', '-', -1);
	  	  
-- -----------------------------------
-- 2. 숫자 관련 함수
-- -----------------------------------
-- abs(숫자) 음수를 양수로 변환
SELECT ABS(-324);

-- ceiling(숫자)-올림, floor(숫자)-내림, round(숫자)-반올림
SELECT CEILING(1234.56), FLOOR(1234.56), ROUND(1234.56);

-- conv(숫자, 원래 진수, 변환할 진수)
SELECT 
		 CONV('A', 16, 10)
	  , CONV('100101',2,16);
	  
-- mod(숫자1, 숫자2)
SELECT 
		 MOD(10,3)
	  , 10%3;
	  
-- pow(숫자1, 숫자2), sqrt(숫자)
SELECT POW(3,2), SQRT(81);

-- rand()
-- rand() *생성할 난수 개수 + 난수의 초기값
-- 1~10까지의 난수
-- floor(rand() * 10 + 1)
SELECT 
		 FLOOR(RAND() * 4 + 5)
	  , FLOOR(RAND() *4) +5;

-- sign(숫자)
SELECT SIGN(10.3333), SIGN(0), SIGN(-1933040);

-- truncate(숫자, 정수)
SELECT 
		 TRUNCATE(12345.12345, 2)
	  , TRUNCATE(12345.12345, -3);

-- -----------------------------------
-- 3. 날짜 및 시간 관련 함수
-- -----------------------------------
-- adddate(날짜, 차이), subdate(날짜, 차이)
SELECT 
		 ADDDATE('2023-05-31', INTERVAL 30 DAY )
	  , SUBDATE('2023-05-31', INTERVAL 3 MONTH);
SELECT SUBDATE('2023-05-31', INTERVAL 1 MONTH);

-- addtime(날짜/시간, 시간), subtime(날짜/시간, 시간)
SELECT 
		 ADDTIME(NOW(), '1:0:10')
	  , SUBTIME('2023-12-28 10:27:00', '1:0:10');
	  
-- curdate(), curtime(), now(), sysdate()
SELECT CURDATE(), CURTIME(), NOW(), SYSDATE();
SELECT @@GLOBAL.time_zone;  -- 현재 타임존 기준을 확인하는 조회문

-- year(날짜), month(날짜), day(날짜)
-- date(날짜/시간), time(날짜/시간)
SELECT YEAR(CURDATE()), MONTH(CURDATE()), DAY(CURDATE());
SELECT HOUR(CURTIME()), MINUTE(CURTIME()), SECOND(CURTIME());

SELECT DATE(NOW()), TIME(NOW());

-- datediff(날짜1, 날짜2), timediff(날짜1 또는 시간1, 날짜2 또는 시간2)
SELECT 
		 DATEDIFF('2024-06-14', '2023-12-28')
	  , TIMEDIFF('18:00:00', CURTIME());

-- dayonweek(날짜), monthname(날짜), dayofyear(날짜)
SELECT DAYOFWEEK(CURDATE()), MONTHNAME(CURDATE()), DAYOFYEAR(CURDATE());

-- last_day(날짜)
SELECT LAST_DAY('20230201');

-- makedate(연도, 지난날)
SELECT MAKEDATE(2023,362);

-- maketime(시, 분, 초);
SELECT MAKETIME(10, 46, 02);

-- quarter(날짜)
SELECT QUARTER('2023-12-28');

-- time_to_sec(시간) 
SELECT TIME_TO_SEC(CURTIME());