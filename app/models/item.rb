class Item < ApplicationRecord
  validates :name, presence: true
  belongs_to :category
  belongs_to :address
  has_one_attached :picture

  def self.search(keyword)
    where(["name like?", "%#{keyword}%"])
  end
end
