class State < ApplicationRecord
    has_many :courses

    def display_name
        return self.name.to_s
    end
end
