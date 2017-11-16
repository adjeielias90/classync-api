class Course < ApplicationRecord
    belongs_to: student
    belongs_to: period
    #scope :search ->, {|query| where("course_code LIKE ?", %#{query}%) }
end
