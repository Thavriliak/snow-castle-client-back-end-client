class Brand < ApplicationRecord
  has_many :inventories
  has_many :users, through: :inventories
end
