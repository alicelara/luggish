class List < ActiveRecord::Base
  attr_accessible :end_date, :location, :name, :sex, :start_date, :user_id

  # belongs_to :user
	# validates :user_id, presence: true
  
end
