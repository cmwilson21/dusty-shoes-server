class JournalSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :trip
end
