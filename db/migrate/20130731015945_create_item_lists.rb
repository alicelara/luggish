class CreateItemLists < ActiveRecord::Migration
  def change
    create_table :item_lists do |t|
      t.integer :item_id
      t.integer :list_id
      t.integer :quantity
      t.text :note

      t.timestamps
    end
  end
end
