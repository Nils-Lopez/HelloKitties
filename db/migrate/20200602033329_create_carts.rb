class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    ## Create table for Carts
    create_table :carts do |t|
      ## cart informations:
      ## cart relationships:
      t.belongs_to :user, index: true
      # t.belongs_to :item, index: true

      t.timestamps
    end
  end
end
