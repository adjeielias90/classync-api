class Student < ApplicationRecord
    has_many :courses
    belongs_to :level
    has_many :attendances
    has_many :users
    
    self.primary_key = 'index_number'
    EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
    #scope :find_student, -> { |query| where(["index_number = ?", "%#{query}%"])
    #}
    validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
end
