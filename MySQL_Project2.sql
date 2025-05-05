-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Once student is passed out from a institute or college, he/she is known as Alumni of the institute. Alumni's career growth plays important role in institute's ranking and other networking activities. In the project, career choices of alumni of two Universities will be analyzed with respect to their passing year as well as the course they completed. 
   Dataset: Six .csv file(Alumni record of College A and College B) Higher Studies, Self Employed and Service/ Job record
         -> College_A_HS ~ Higher Studies Record of College A
         -> College_A_SE ~ Self Employed Record of College A
         -> College_A_SJ ~ Service / Job Record of College A
         -> College_B_HS ~ Higher Studies Record of College B
         -> College_B_SE ~ Self Employed Record of College B 
         -> College_B_SJ ~ Service / Job Record of College B
         
Task to be performed.
*/

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q1. Create new schema as alumni. 
-- Ans:
CREATE DATABASE alumni;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q2. Import all .csv files into MySQL. 
-- Ans: Imported all six tables with table imort wizard. 

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q3. Run SQL command to see the structure of six tables. 
-- Ans:
USE alumni;
DESC college_a_hs;
DESC college_a_se;
DESC college_a_sj;
DESC college_b_hs;
DESC college_b_se;
DESC college_b_sj;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q4. Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python. 
-- Ans: First connect python to mysql with the help of MySQL connector. Import mysqlconnector create database of python then connect with localhost of my sql  and then give user name, password  and give schema in which u want to work. then create cursor after that execute cursor after that fetch a  cursor and call in loop and print it. 
--      It is done in Jupyter Notebook .  

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q5. Import first 1500 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel. 
-- Ans: Imported data into MS Excel but It shows maximum limit 100. I am also trying to change the advanced option in general section but it also shows 100 is the highest limit. 


-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q6. Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values. 
-- Ans:
USE alumni;
CREATE VIEW college_A_HS_V AS 
(
 SELECT * FROM college_a_hs WHERE RollNo != '' AND LastUpdate != '' AND Name != '' AND FatherName != '' AND MotherName != '' AND Batch != '' AND Degree != '' AND PresentStatus != '' AND HSDegree != '' AND EntranceExam != '' AND Institute != '' AND Location != ''
);
SELECT * FROM college_a_hs_v;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q7. Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values. 
-- Ans:
USE alumni ;
CREATE VIEW college_A_SE_V AS 
(
 SELECT * FROM college_a_se WHERE RollNo != '' AND LastUpdate != '' AND Name != '' AND FatherName != '' AND MotherName != '' AND Batch != '' AND Degree != '' AND PresentStatus != '' AND Organization != ''  AND Location != ''
);
SELECT * FROM college_a_se_v;
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q8. Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values. 
-- Ans:
USE alumni;
CREATE VIEW college_A_SJ_V AS 
(
 SELECT * FROM college_a_sj WHERE RollNo != '' AND LastUpdate != '' AND Name != '' AND FatherName != '' AND MotherName != '' AND Batch != '' AND Degree != '' AND PresentStatus != '' AND Organization != '' AND Designation != '' AND Location != ''
);
SELECT * FROM college_a_sj_v;
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q9. Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values. 
-- Ans:
USE alumni;
CREATE VIEW college_B_HS_V AS 
(
 SELECT * FROM college_b_hs WHERE RollNo != '' AND LastUpdate != '' AND Name != '' AND FatherName != '' AND MotherName != '' AND Branch != '' AND Batch != '' AND Degree != '' AND PresentStatus != '' AND HSDegree != '' AND EntranceExam != '' AND Institute != '' AND Location != '' 
);
SELECT * FROM college_b_hs_v;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q10. Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values. 
-- Ans:
USE alumni;
CREATE VIEW college_B_SE_V AS
(
 SELECT * FROM college_b_se WHERE ROllNo != '' AND LastUpdate != '' AND Name != '' AND FatherName != '' AND MotherName != ''  AND Branch != '' AND  Batch != '' And Degree != ''  AND PresentStatus != ''  AND Organization != '' AND Location != ''
);
SELECT * FROM college_b_se_v;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q11. Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V, Remove null values. 
-- Ans :
USE alumni;
CREATE VIEW college_B_SJ_V AS 
(
 SELECT * FROM college_b_sj WHERE RollNo != '' And LastUpdate != '' AND Name != '' AND FatherName != '' AND MotherName != '' AND Branch != '' AND  Batch != '' AND Degree != '' AND PresentStatus != '' AND Organization != '' AND Designation != '' AND Location != ''
);
SELECT * FROM college_b_sj_v;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q12. Make procedure to use string function/s for converting record of Name, FatherName, MotherName into lower case of views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V)
-- Ans:
USE alumni;
DELIMITER $$
CREATE PROCEDURE convertrecord()
BEGIN
SELECT LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_a_hs_v;
SELECT LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_a_se_v;
SELECT LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_a_sj_v;
SELECT LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_b_hs_v;
SELECT LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_b_se_v;
SELECT LOWER(Name), LOWER(FatherName), Lower(MotherName) FROM college_b_sj_v;
END $$
DELIMITER ;

CALL convertrecord();
-- it gives six, result window for all six tables of views respectively 

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q13. Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) into MS Excell and make pivot chart for location of Alumni. 
-- Ans: This answer is in ms excel. 

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q14. Write a query to create procedure get_name_collegeA using the cursor to fetch names of all students from college A.
-- Ans:
USE alumni;
DELIMITER $$
CREATE PROCEDURE get_name_collegeA 
(
 INOUT CollegeA TEXT(40000)
)
BEGIN 
   DECLARE finish INT DEFAULT 0;
   DECLARE namelist VARCHAR(16000) DEFAULT '';
   DECLARE namedetailed 
             CURSOR FOR
                    SELECT Name FROM college_a_hs UNION SELECT Name FROM college_a_se UNION SELECT Name FROM college_a_sj;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET finish = 1;
   OPEN namedetailed;
   getsnameCollegeA:
   LOOP
        FETCH namedetailed INTO namelist;
        IF finish = 1 THEN 
               LEAVE getsnameCollegeA;
		END IF;
        SET CollegeA = CONCAT(namelist,";",CollegeA);
	END LOOP getsnameCollegeA;
    CLOSE namedetailed;
END $$
DELIMITER ;

SET @CollegeA = '';
CALL get_name_collegeA(@CollegeA);
SELECT @CollegeA Name;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Q15. Write a query to create procedure get_name_collegeB using the cursor to fetch names of all students from college B.
-- Ans:
USE alumni;

DELIMITER $$
CREATE PROCEDURE get_name_collegeB
(
 INOUT CollegeB TEXT(40000)
)
BEGIN 
    DECLARE finish INT DEFAULT 0;
    DECLARE namelist VARCHAR(16000) DEFAULT "";
    DECLARE namedetailed 
              CURSOR FOR
                        SELECT Name FROM college_b_hs UNION SELECT Name FROM college_b_se UNION SELECT Name FROM college_b_sj;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finish = 1;
    OPEN namedetailed;
    getsnameCollegeB:
    LOOP
         FETCH namedetailed INTO namelist;
         IF finish = 1 THEN 
                LEAVE getsnameCollegeB;
         END IF;
         SET CollegeB = CONCAT(namelist,";",CollegeB);
	END LOOP getsnameCollegeB;
    CLOSE namedetailed;
END $$
DELIMITER ;

SET @CollegeB = '';
CALL get_name_collegeB(@CollegeB);
SELECT @CollegeB Name;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Q16. Calculate the percentage of career choice of College A and College B Alumni
        -- (w.r.t Higher Studies, Self Employed and Service / Job) 
        Note: Approximate percentages are considered for career choices. 
*/
-- Ans:
USE alumni;
SELECT "Higher Studies", (SELECT COUNT(*) FROM college_a_hs)/ ((SELECT COUNT(*) FROM college_a_hs)+(SELECT COUNT(*) FROM college_a_se)+(SELECT COUNT(*) FROM college_a_sj))*100 CollegeA_percentage,
(SELECT COUNT(*) FROM college_b_hs)/((SELECT COUNT(*) FROM college_b_hs)+(SELECT COUNT(*) FROM college_b_se)+(SELECT COUNT(*) FROM college_b_sj))*100 CollegeB_percentage
UNION 
SELECT "Self Employed", (SELECT COUNT(*) FROM college_a_se)/((SELECT COUNT(*) FROM college_a_hs)+(SELECT COUNT(*) FROM college_a_se)+(SELECT COUNT(*) FROM college_a_sj))*100 CollegeA_percentage,
(SELECT COUNT(*) FROM college_b_se)/((SELECT COUNT(*) FROM college_b_hs)+(SELECT COUNT(*) FROM college_b_se)+(SELECT COUNT(*) FROM college_b_sj))*100 CollegeB_percentage
UNION
SELECT "Service Job", (SELECT COUNT(*) FROM college_a_sj)/((SELECT COUNT(*) FROM college_a_hs)+(SELECT COUNT(*) FROM college_a_se)+(SELECT COUNT(*) FROM college_a_sj))*100 CollegeA_percentage,
(SELECT COUNT(*) FROM college_b_sj)/((SELECT COUNT(*) FROM college_b_hs)+(SELECT COUNT(*) FROM college_b_se)+(SELECT COUNT(*) FROM college_b_sj))* 100 CollegeB_percentage;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------