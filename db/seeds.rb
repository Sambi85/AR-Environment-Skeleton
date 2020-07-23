Student.destroy_all
Teacher.destroy_all

#Student
student1 = Student.create(first_name: "Charile", last_name: "Warner", grade_level: "first")
student2 = Student.create(first_name: "Sally",last_name: "Sioux",grade_level: "third")
student3 = Student.create(first_name: "Frank",last_name: "Beans",grade_level: 'second')


### grade_level_id: teacher1.id

#Teacher
teacher1 = Teacher.create(last_name: "Franks", grade_level: "third",years_of_experience: 3)
teacher2 = Teacher.create(last_name:"Johnson", grade_level: "third",years_of_experience: 6)
teacher3 = Teacher.create(last_name:"Dilberts", grade_level: "third",years_of_experience: 3)

grade_levela = GradeLevel.create(teacher_id: teacher1.id, student_id: student1.id)
grade_levelb= GradeLevel.create(teacher_id: teacher2.id, student_id: student2.id)
grade_levelc = GradeLevel.create(teacher_id: teacher3.id, student_id: student3.id)