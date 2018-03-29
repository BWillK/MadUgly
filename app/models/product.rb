class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  # accepts_nested_attributes_for :prod, allow_destroy: true

  mount_uploader :image, ImageUploader

  validates :name, :description, presence: true
  validates :quantity, :price, presence: true, numericality: true
end
