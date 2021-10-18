class Journal < ApplicationRecord
  belongs_to :trip, required: false
end
