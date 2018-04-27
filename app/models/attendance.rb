class Attendance < ApplicationRecord
    self.primary_key = 'student_id'
    belongs_to :student
    belongs_to :period
    belongs_to :course
    belongs_to :today


end
