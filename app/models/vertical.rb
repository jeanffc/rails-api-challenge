class Vertical < ApplicationRecord
    include ValidateNameUniquenessAcrossModels

    # model association
    has_many :categories, dependent: :destroy

    # validation
    validates_presence_of :name
end
