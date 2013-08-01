class Item < ActiveRecord::Base
  attr_accessible :category_id, :name, :user_id

  belongs_to :user
  belongs_to :category
  has_many :lists, through: :item_lists
  has_and_belongs_to_many :tags
end
