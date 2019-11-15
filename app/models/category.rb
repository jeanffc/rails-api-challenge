class Category < ApplicationRecord
  # model association
  belongs_to :vertical
  belongs_to :state

  # validation
  validates_presence_of :name
end
