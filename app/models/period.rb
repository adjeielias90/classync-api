class Period < ApplicationRecord
    has_many :courses
    has_and_belongs_to_many :classrooms
    has_many :attendances

    #self.primary_key = 'name'


    def display_name
        return self.time.to_s(:due_time)
       
    end

end
