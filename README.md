🧑‍🎓 Alumni Career Analysis – SQL Project
📌 Project Overview
This project analyzes the career paths of alumni from two different colleges (College A and College B) using six datasets. The alumni are categorized based on their post-college career choices:

Higher Studies

Self Employed

Service / Job

By leveraging SQL, the project performs schema creation, data cleaning, data visualization (in Excel), string manipulation, and data summarization to uncover trends in alumni career paths.

📁 Dataset Description
Six .csv files are used as input:

College_A_HS.csv: Higher Studies alumni data from College A

College_A_SE.csv: Self Employed alumni data from College A

College_A_SJ.csv: Service/Job alumni data from College A

College_B_HS.csv: Higher Studies alumni data from College B

College_B_SE.csv: Self Employed alumni data from College B

College_B_SJ.csv: Service/Job alumni data from College B

🛠️ Tasks Performed
✅ Database Setup
Created schema alumni

Imported all CSV files using MySQL Import Wizard

✅ Table Structure & Preview
Displayed structure of all tables using DESC

Viewed top 1000 rows using Python (Jupyter Notebook)

Imported first 1500 rows into MS Excel

✅ Data Cleaning
Removed NULL/empty values from each table

Created cleaned views for all six datasets

✅ String Manipulation
Created a stored procedure to convert Name, FatherName, and MotherName columns to lowercase in all views

✅ Excel Pivot Charts
Imported cleaned views into Excel to visualize alumni location trends

✅ Cursor-based Procedures
Created and called two procedures to fetch alumni names using cursors for both colleges

✅ Career Path Statistics
Calculated and compared approximate percentages of alumni choosing:

Higher Studies

Self Employment

Service/Jobs

📊 Tools & Technologies Used
MySQL – Data storage, cleaning, analysis

Python (Jupyter Notebook) – Data preview

MS Excel – Data import and pivot chart visualization

📈 Key Outcome
This project enables institutions to:

Understand alumni career trends

Enhance networking and placement strategies

Identify strengths in academic offerings
