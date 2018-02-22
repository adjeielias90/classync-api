class LevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :semester_id, :flag
end
