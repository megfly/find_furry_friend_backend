class Pet < ApplicationRecord
  belongs_to :shelter, optional: true
  has_one_attached :image
end
