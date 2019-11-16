class Course < ApplicationRecord
  # model association
  belongs_to :category
  belongs_to :state

  # validation
  validates_presence_of :name, :author, :category_id, :state_id
end
