class User < ApplicationRecord
  has_many :trips
  has_many :journals, through: :trips
  has_secure_password
  validates :email, uniqueness: {case_sensitive: false} 
  validates_presence_of :first_name, :last_name, :password, :email
end
