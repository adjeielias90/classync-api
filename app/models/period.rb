class Period < ApplicationRecord
    has_many: courses
    belongs_to: level
    belongs_to: classroom
end
