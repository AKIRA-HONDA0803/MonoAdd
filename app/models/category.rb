class Category < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  has_many :items
  belongs_to :user
end
