class AddLimitToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :limit, :integer, default: 15
  end
end
