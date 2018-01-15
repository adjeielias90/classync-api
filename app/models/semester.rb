class Semester < ApplicationRecord
    has_many :levels
    validates :start, presence: true
    validates :ending, presence: true

    def display_name
        return 'Semester ' + self.id.to_s 
    end
end
