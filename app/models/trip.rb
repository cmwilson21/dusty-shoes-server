class Trip < ApplicationRecord
  belongs_to :user
  validates_presence_of :city, :country
  # has_many :journals, dependent: :destroy
end
