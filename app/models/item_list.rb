class ItemList < ActiveRecord::Base
  attr_accessible :item_id, :list_id, :note, :quantity
end
