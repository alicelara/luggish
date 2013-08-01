class ItemList < ActiveRecord::Base
  attr_accessible :item_id, :list_id, :note, :quantity
  belongs_to :item
  belongs_to :list
end
