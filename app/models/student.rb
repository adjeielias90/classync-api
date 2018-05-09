class Student < ApplicationRecord
    has_many :courses
    belongs_to :level
    has_many :attendances
    has_one :user
    
    self.primary_key = 'index_number'

    #scope :find_student, -> { |query| where(["index_number = ?", "%#{query}%"])
    #}
end
