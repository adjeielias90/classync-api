class Today < ApplicationRecord
    has_many :attendances
    has_many :courses


    def display_name
        return self.day.to_s 
    end

    

end
