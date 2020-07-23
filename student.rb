class Student <ActiveRecord::Base


    @@all = []

    def initialize(first_name,last_name,grade_level)
        @first_name = first_name
        @last_name = last_name
        @grade_level = grade_level
        @@all << self
    end

    def full_name
        first_last = Student.first_name+" "+Student.last_name
        first_last
    end

    def grade_level
        Student.grade_level
    end

    def self.all_in_grade(grade_level)
        Student.all.select do |student| 
        if student.grade_level == grade_level
            student
        end
    end

end