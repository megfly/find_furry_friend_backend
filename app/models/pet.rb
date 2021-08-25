class Pet < ApplicationRecord
  # belongs_to :shelter
  has_one_attached :image
end
