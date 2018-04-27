module Api
  module V1
    class LevelSerializer < ActiveModel::Serializer
      attributes :id, :name, :size, :semester_id, :flag
      has_many :courses
    end
  end
end






