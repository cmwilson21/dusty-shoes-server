class User < ApplicationRecord
  has_many :trips
  validates_presence_of :first_name, :last_name, :password_digest, :email
  validates :email, uniqueness: {case_sensitive: false} 
  has_secure_password
end
