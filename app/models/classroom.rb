class Classroom < ApplicationRecord
    has_many :periods
    has_many :courses
    validates :name, presence: true, length: {maximum: 3}
    validates :capacity, presence: true, allow_nil: false

end
