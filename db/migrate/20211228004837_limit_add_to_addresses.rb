class LimitAddToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :limit, :integer, default: 10
  end
end
