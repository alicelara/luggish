class Item < ActiveRecord::Base
  attr_accessible :category_id, :name, :user_id, :item_lists_attributes

  belongs_to :user
  belongs_to :category
  has_many :item_lists, :dependent => :destroy
  has_many :lists, through: :item_lists
  has_and_belongs_to_many :tags

  validates :name, :presence => true, :uniqueness => true
  validates :category_id, :presence => true

   accepts_nested_attributes_for :item_lists, :reject_if => :all_blank

end
