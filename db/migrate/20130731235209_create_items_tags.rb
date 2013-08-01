class CreateItemsTags < ActiveRecord::Migration
  def change
      create_table :items_tags, :id => false do |t|
      t.references :item, :null => false
      t.references :tag, :null => false

      t.timestamps
    end
   
  end
end
