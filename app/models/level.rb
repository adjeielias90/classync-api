class Level < ApplicationRecord
    has_many :courses
    has_many :students
    belongs_to :semester
    validates :name, presence: true, length: {maximum: 3}, allow_nil: false
    validates :size, presence: true
    
    
end
