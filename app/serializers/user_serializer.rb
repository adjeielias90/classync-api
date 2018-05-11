module Api
  module V1
    class UserSerializer < ActiveModel::Serializer

      attributes :email, :password, :student_rep_role, :student_id
    
    end    
  end
end





