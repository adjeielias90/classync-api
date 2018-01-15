class Period < ApplicationRecord
    has_many :courses
    belongs_to :classroom


    def display_name
        return self.time.to_s(:due_time)
       
    end

end
