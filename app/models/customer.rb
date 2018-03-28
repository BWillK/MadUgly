class Customer < ApplicationRecord
  validates :first_name, :last_name, :full_name, :address, :email, presence: true
end
