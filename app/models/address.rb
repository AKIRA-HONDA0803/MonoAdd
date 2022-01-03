class Address < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  has_many :item
  belongs_to :user
end
