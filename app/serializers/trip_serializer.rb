class TripSerializer < ActiveModel::Serializer
  attributes :id, :city, :country, :image_url, :been_there, :reason
  has_one :user
end
