class Course < ApplicationRecord
  belongs_to :category
  belongs_to :state
end
