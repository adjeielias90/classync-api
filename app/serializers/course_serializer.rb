module Api
  module V1
    class CourseSerializer < ActiveModel::Serializer
      attributes :id, :level_id, :period_id
      has_many :attendances
      has_one :level


    end
    

  end 
end 

