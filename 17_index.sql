-- index
CREATE TABLE phone (
    phone_code INT PRIMARY KEY,
    phone_name VARCHAR(100),
    phone_price DECIMAL(10, 2)
);

INSERT 
  INTO phone (phone_code , phone_name , phone_price )
VALUES 
(1, 'galaxyS23', 1200000),
(2, 'iPhone14pro', 1433000),
(3, 'galaxyZfold3', 1730000);

SELECT * FROM phone;

-- 조회의 실행계획 확인
EXPLAIN SELECT * FROM phone WHERE phone_name = 'galaxyS23';

-- where절을 활용한 컬럼에 index를 추가하기.
CREATE INDEX idx_name ON phone (phone_name);

SHOW INDEX FROM phone;

-- index 추가 후 다시 해당 컬럼을 조건으로 조회
EXPLAIN SELECT * FROM phone WHERE phone_name = 'iPhone14pro';

OPTIMIZE TABLE phone;

DROP INDEX idx_name ON phone;
SHOW INDEX FROM phone;

ALTER TABLE phone DROP INDEX idx_name;



 