-- 1) = 조인을 이용해서 SCOTT 사원의 부서번호와 부서이름을 출력하셈
SELECT D.DNO AS 부서번호, 
       E.ENAME AS 사원이름, 
       D.DNAME AS 부서이름
FROM DEPARTMENT D,
     EMPLOYEE E
WHERE D.DNO = E.DNO
AND E.ENAME = 'SCOTT';

-- 2) 모든 사원의 이름과 그 사원이 소속된 부서이름과 지역명을 출력하셈 
SELECT E.ENAME AS 사원이름, 
       D.DNAME AS 부서이름, 
       D.LOC AS 지역명
FROM DEPARTMENT D,
     EMPLOYEE E
WHERE D.DNO = E.DNO;

-- 3) 10번 부서에 속하는 사원에 대해 직급과 지역명을 출력하셈
SELECT E.DNO AS 부서번호,
       E.ENAME AS 사원이름, 
       E.JOB AS 직급, 
       D.LOC AS 지역명
FROM DEPARTMENT D,
     EMPLOYEE E
WHERE D.DNO = E.DNO
AND E.DNO = 10;

-- 4) 커미션을 받은 모든 사원의 이름, 부서이름, 지역명을 출력하셈
SELECT E.ENAME AS 사원이름, 
       D.DNAME AS 부서이름, 
       D.LOC AS 지역명
FROM DEPARTMENT D,
     EMPLOYEE E
WHERE D.DNO = E.DNO
AND E.COMMISSION > 0;

-- 5) = 조인과 와일드카드(%)를 사용하여 이름에 A가 포함된 모든 사원의 이름과
-- 부서명을 출력하셈
SELECT E.ENAME AS 사원이름, 
       D.DNAME AS 부서이름
FROM DEPARTMENT D,
     EMPLOYEE E
WHERE D.DNO = E.DNO
AND E.ENAME LIKE '%A%';

-- 6) NEW YORK에 근무하는 모든 사원의 이름, 업무, 부서번호 및 부서명을 출력하셈
SELECT E.ENAME AS 사원이름, 
       E.JOB AS 업무,
       D.DNO AS 부서번호,
       D.DNAME AS 부서명
FROM DEPARTMENT D,
     EMPLOYEE E
WHERE D.DNO = E.DNO
AND D.LOC = 'NEW YORK';