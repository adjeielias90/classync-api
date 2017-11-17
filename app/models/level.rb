class Level < ApplicationRecord
    has_many: students
    has_many: periods
    beleongs_to: semester
    validates :name, presence: true, length: {maximum: 3}, allow_nil: false
    validates :size, presence: true
    
    
end
