class User < ApplicationRecord
  has_many :trips
  # has_many :journals, through: :trips
  validates :email, uniqueness: {case_sensitive: false} 
  validates_presence_of :first_name, :last_name, :password_digest, :email
  has_secure_password

  # def been_there
  #   self.trips.where('been_there = ?', 'true')
  # end

  # def to_go
  #   self.trips.where('been_there = ?', 'false')
  # end

end
