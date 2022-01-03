class Item < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  belongs_to :category
  belongs_to :address
  belongs_to :user
  has_one_attached :picture

  def self.search(keyword)
    where(["name like?", "%#{keyword}%"])
  end
end
