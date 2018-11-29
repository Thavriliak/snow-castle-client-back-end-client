class InventorySerializer < ActiveModel::Serializer
  attributes :id, :product, :amount, :price, :size, :color
  has_one :brand
  has_one :user
end
