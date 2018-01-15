class Level < ApplicationRecord
    has_many :courses
    has_many :students
    belongs_to :semester
    validates :name, presence: true, length: {maximum: 3}, allow_nil: false
    validates :size, presence: true

    def display_name
        return self.name.to_s
    end
    #welcome back. change class_id in courses table to classroom_id to complete the assciation between them. Also get rid of the location column.
    #also fix the issue with the time of the period. Lookss like it will cause issues in the future
    
    
    
end
