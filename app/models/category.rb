class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :items



  def self.findAllItems(categoryName)
  	# binding.pry
 	categoryId = Category.find_by_name(categoryName).id
 	items = []
 	Item.all.each do |i|
 		# binding.pry	
		if i.category_id == categoryId
			items << i.name
		end
  	end
  	return items
  end


  def self.findItems
  	allItems = Hash.new
  	# binding.pry
  	Category.all.each do |c|
  		items = findAllItems(c.name)
  		allItems[c.name] = items
  		# binding.pry	
  	end
  
  	return allItems
  
  end


  
end
