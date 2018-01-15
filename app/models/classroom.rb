class Classroom < ApplicationRecord
    has_many :periods
    has_many :courses
end
