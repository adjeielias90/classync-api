class Course < ApplicationRecord
    extend FriendlyId
    friendly_id :code, :use => [:slugged, :finders]
    
    belongs_to :level
    belongs_to :period
    belongs_to :state
    belongs_to :classroom
    belongs_to :today
    validates :code, presence: true, allow_nil: false
    validates :classroom_id, presence: true, allow_nil: false
    has_many :attendances




    
    #self.primary_key = 'level_id'
    def display_name
        return self.code.to_s
    end
    #scope :search ->, {|query| where("course_code LIKE ?", %#{query}%) }
    #scope :pending, -> {where( )}
end
