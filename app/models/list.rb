class List < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :location, :sex, :start_date, :end_date

  
	
  validates :name, presence: true, length: {maximum: 100}
  validates :location, presence: true, length: {maximum: 255}
  validates :sex, presence: true
  
end
