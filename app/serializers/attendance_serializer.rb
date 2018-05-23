class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :present, :student_id, :period_id, :course_id, :today_id
end
