class Product < ApplicationRecord
  has_many :categories
  has_many :categories, through: :product_categories
  mount_uploader :image, ImageUploader
end
