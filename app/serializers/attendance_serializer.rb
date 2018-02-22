class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :present, :student_id, :course_id, :period_id
end
