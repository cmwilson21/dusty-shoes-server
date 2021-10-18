class Trip < ApplicationRecord
  belongs_to :user, required: false
  validates_presence_of :city, :country
end
