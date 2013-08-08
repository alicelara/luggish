class ItemList < ActiveRecord::Base
  attr_accessible :name, :item_id, :list_id, :note, :quantity, :item
  belongs_to :item, :autosave => true
  belongs_to :list

	before_save do
		self.item = Item.where(:name => @new_name, :user_id => nil).first
		return if self.item.present?
		attrs = {:name => @new_name, :user_id => list.user_id}
		self.item = Item.where(attrs).first_or_create!(:category_id => 10)
	end

	def is_system_item?
		(item.present? && item.user_id.blank?) || Item.where(:name => @new_name, :user_id => nil).present?
	end

	def is_user_item?
		!is_system_item?	
	end

	# accepts_nested_attributes_for :item, :reject_if => :all_blank

	def name=(name)
		@new_name = name
	end


	def name
		return @new_name if @new_name.present?
		self.item.present? ? self.item.name : nil
	end

end
