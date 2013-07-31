class Item < ActiveRecord::Base
  attr_accessible :category_id, :name, :user_id

  has_many :lists, through :items_list
end
