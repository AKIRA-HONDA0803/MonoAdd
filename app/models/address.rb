class Address < ApplicationRecord
  validates :name, presence: true
  has_many :item
end
