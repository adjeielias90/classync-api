class Course < ApplicationRecord
    belongs_to: student
    belongs_to: period
    belongs_to: state
    validates :code, presence: true, allow_nil: false
    validates :location, presence: true, allow_nil: false
    #scope :search ->, {|query| where("course_code LIKE ?", %#{query}%) }
end
