class Period < ApplicationRecord
    has_many :courses
    has_and_belongs_to_many :classrooms
    has_many :attendances

    #self.primary_key = 'name'


    def display_name
        return self.name.to_s
    end

end
