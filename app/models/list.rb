class List < ActiveRecord::Base
attr_accessible :name, :location, :sex, :start_date, :end_date

  belongs_to :user
  has_many :item_lists
  has_many :items, through: :item_lists
	
  validates :name, presence: true, length: {maximum: 100}
  validates :location, presence: true, length: {maximum: 255}
  validates :sex, presence: true
  
end
