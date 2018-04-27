class TodaySerializer < ActiveModel::Serializer
  attributes :id
  has_many :courses
end
