# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories

Domain: Student-Teacher
<!-- - A Student has a first_name (string) -->
<!-- - A Student has a last_name (string) -->
<!-- - A Student has a grade_level (string), for ex: "first", "second", "third", etc... -->
 <!-- Student#full_name should return the first and last name of the student in one string, for ex: "Ian Grubb"
- Student#grade_level should return the student's grade level-
- Student.all should return a list of all students
- Student.all_in_grade should receive an argument of a grade, ex: "first", and return all students who are in that grade
- A Teacher has a last_name (string)
- A Teacher has a grade_level (string)
<!-- / -->
Answer the following questions:
Which method(s) does Active Record create for you?
~ .all, initialize methods are replaced,  instance methods normally under attr accessor. 

Which method(s) did you have to create yourself? Why?
1. instance methods: #tenure, .all_in_grade, #full_name


- A Student has many Teachers through GradeLevel
- A Teacher has many Students through GradeLevel

You should have a complete seeds file 

Answer the following questions:
- What changes did you make to your app? Why? 
1. Created Class GradeLevel
2. Created a Migration file for Grade Level
3. Created a table = grade_levels/ which holds foreign keys for teacher_id  & student_id
4. Migrated the tables to our schema file/ used rake to seed our sample to the database
5. Re-mapped Macro associations from singular classes to a has many through relationship.



