class RemoveItemaddStripe < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :item_id
  end
end
