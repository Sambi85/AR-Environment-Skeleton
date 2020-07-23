class Student <ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels  


  #- A Student has many Teachers through GradeLevel
    def full_name
      "#{self.first_name} #{self.last_name}"
    end

    # def grade_level
    #     self.grade_level
    # end  << ActiveRecord will take care of this !!!! 

    def self.all_in_grade(grade_level)
         self.all.select do |student| 
        if student.grade_level == grade_level
            student
        end
      end
    end

end