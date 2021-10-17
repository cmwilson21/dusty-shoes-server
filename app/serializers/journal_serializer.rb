class JournalSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :trip
end
