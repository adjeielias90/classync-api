class Period < ApplicationRecord
    has_many :courses
    belongs_to :classroom
    has_many :attendances

    #self.primary_key = 'name'


    def display_name
        return self.time.to_s(:due_time)
       
    end

end
