class Course < ApplicationRecord
    belongs_to :level
    belongs_to :period
    belongs_to :state
    belongs_to :classroom
    validates :code, presence: true, allow_nil: false
    validates :classroom_id, presence: true, allow_nil: false
    def display_name
        return self.code.to_s
    end
    #scope :search ->, {|query| where("course_code LIKE ?", %#{query}%) }
    #scope :pending, -> {where( )}
end
