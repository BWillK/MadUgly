class Product < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :order_items

  default_scope { where(active: true) }

  accepts_nested_attributes_for :product_categories, allow_destroy: true

  mount_uploader :image, ImageUploader

  validates :name, :description, presence: true
  validates :quantity, :price, presence: true, numericality: true

  paginates_per 5
end
