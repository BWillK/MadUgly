class Product < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  mount_uploader :image, ImageUploader
  validates :name, :description, presence: true
  validates :quantity, :price, presence: true, numericality: true
end
