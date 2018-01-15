class Period < ApplicationRecord
    has_many :courses
    belongs_to :classroom

    def display_name
        return self.try(:time).strftime("%I:%M%p ")
    end
end
