class Product < ApplicationRecord
  belongs_to :catergory
  has_one_attached :image
end
