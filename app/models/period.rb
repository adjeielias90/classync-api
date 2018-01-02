class Period < ApplicationRecord
    has_many :courses
    belongs_to :classroom
end
