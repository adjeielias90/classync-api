class Semester < ApplicationRecord
    has_many :levels
    validates :start, presence: true
    validates :ending, presence: true    
end
