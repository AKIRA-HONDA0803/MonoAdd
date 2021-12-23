class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :address_id
      t.integer :category_id

      t.timestamps
    end
  end
end
