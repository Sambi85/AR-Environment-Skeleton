class Teacher <ActiveRecord::Base

@@all = []

    def initialize()
        @last_name = last_name
        @grade_level = grade_level
        @years_of_experience = years_of_experience
        @@all << self 
    end
    
    def tenure
      Teacher.all.select{|teacher| teacher.years_of_experience > 5}
    end

end