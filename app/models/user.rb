class User < ApplicationRecord
  belongs_to :customer
  validates :username, :password, presence: true
end
