class Order < ApplicationRecord
  belongs_to :customer
  validates :total, presence: true, numericality:  true
  validates :customer_id, presence: true
end
