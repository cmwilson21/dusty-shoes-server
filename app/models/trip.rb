class Trip < ApplicationRecord
  # belongs_to :user, required: false
  belongs_to :user
  has_many :journals, dependent: :destroy
  validates_presence_of :city, :country
end
