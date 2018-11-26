# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :inventories
  has_many :brands, through: :inventories
end
