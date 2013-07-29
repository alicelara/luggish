class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :sex
      t.integer :user_id

      t.timestamps
    end
  end
end
