class Category < ApplicationRecord
  include ValidateNameUniquenessAcrossModels

  # model association
  belongs_to :vertical
  belongs_to :state

  # validation
  validates_presence_of :name, :vertical_id, :state_id
end
