class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :student

  validates_presence_of :email, :password, :student_id, :student_role, :student_rep_role
  validates :email, uniqueness: true
  has_secure_password
  
  
end
