class Trip < ApplicationRecord
  belongs_to :user
  validates_presence_of :city, :country
end
