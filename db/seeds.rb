# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.destroy_all
Item.destroy_all

categories = ['Toiletries', 'Clothes', 'Shoes', 'Gadgets', 'Weather Related', 'Travel Aids', 'Documents & Ids', 'Miscellaneous', 'Luggage', 'My Items']

categories.each do |cat|
	Category.create!(name: cat) 
end



categories_hash = {}
categories.each do |gory|
	categories_hash[gory] = Category.where(:name => gory).first
end



    

Item.create(:name => 'Toothbrush', :category_id => categories_hash['Toiletries'].id)       
Item.create(:name => 'Toothpaste',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Mouthwash',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Dental Floss',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Deodorant', :category_id => categories_hash['Toiletries'].id)       
Item.create(:name => 'Body Wash', :category_id => categories_hash['Toiletries'].id)       
Item.create(:name => 'Loofa',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Bar of Soap',:category_id => categories_hash['Toiletries'].id)      
Item.create(:name => 'Washcloth',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Shampoo',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Conditioner', :category_id => categories_hash['Toiletries'].id) 
Item.create(:name => 'Hair Brush', :category_id => categories_hash['Toiletries'].id)       
Item.create(:name => 'Comb',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Hair Spray',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Hair Gel', :category_id => categories_hash['Toiletries'].id)   
Item.create(:name => 'Hair Mousse', :category_id => categories_hash['Toiletries'].id)       
Item.create(:name => 'Shaving Cream',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Razor',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Electric Razor', :category_id => categories_hash['Toiletries'].id)  
Item.create(:name => 'Hair Trimmer', :category_id => categories_hash['Toiletries'].id)       
Item.create(:name => 'After-Shave',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Cologne',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Perfume', :category_id => categories_hash['Toiletries'].id)  
Item.create(:name => 'Contact Solution', :category_id => categories_hash['Toiletries'].id)       
Item.create(:name => 'Contact Lenses',:category_id => categories_hash['Toiletries'].id) 
Item.create(:name => 'Lip Balm/Chapstick',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Facial Cream',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Facial Cleanser', :category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Body Lotion', :category_id => categories_hash['Toiletries'].id) 
Item.create(:name => 'Hand Cream', :category_id => categories_hash['Toiletries'].id)   
Item.create(:name => 'Nail Cutter', :category_id => categories_hash['Toiletries'].id) 
Item.create(:name => 'Tweezers',:category_id => categories_hash['Toiletries'].id)      
Item.create(:name => 'Mirror',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Cotton Swabs/Balls',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Feminine Hygiene',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Birth Control', :category_id => categories_hash['Toiletries'].id)  
Item.create(:name => 'Contraceptives', :category_id => categories_hash['Toiletries'].id)  
Item.create(:name => 'Band-Aid', :category_id => categories_hash['Toiletries'].id)       
Item.create(:name => 'First Aid Kit',:category_id => categories_hash['Toiletries'].id)
Item.create(:name => 'Hand Sanitizer',:category_id => categories_hash['Toiletries'].id)

Item.create(:name => 'T-Shirts', :category_id => categories_hash['Clothes'].id)       
Item.create(:name => 'Long-Sleeve Shirts',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Long Sleeve Dress Shirts', :category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Short Sleeve Shirts', :category_id => categories_hash['Clothes'].id) 
Item.create(:name => 'Dress Shirts',:category_id => categories_hash['Clothes'].id)        
Item.create(:name => 'Polo Shirts',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Blouses', :category_id => categories_hash['Clothes'].id) 
Item.create(:name => 'Tank-Tops',:category_id => categories_hash['Clothes'].id)      
Item.create(:name => 'Camisoles',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Sweatshirts', :category_id => categories_hash['Clothes'].id) 
Item.create(:name => 'Sweaters', :category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Cardigans',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Blazers', :category_id => categories_hash['Clothes'].id)       
Item.create(:name => 'Suits',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Dresses', :category_id => categories_hash['Clothes'].id) 
Item.create(:name => 'Skirts', :category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Jeans',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Pants', :category_id => categories_hash['Clothes'].id)        
Item.create(:name => 'Slacks',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Khaki Pants',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Track Pants/Joggers',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Tights', :category_id => categories_hash['Clothes'].id) 
Item.create(:name => 'Shorts',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Pajamas',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Underwear',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Boxers', :category_id => categories_hash['Clothes'].id)       
Item.create(:name => 'Undershirts',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Bra(s)',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Lingerie', :category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Dressy Socks',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Ankle Socks',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Stockings', :category_id => categories_hash['Clothes'].id) 
Item.create(:name => 'Pantyhose', :category_id => categories_hash['Clothes'].id)       
Item.create(:name => 'Shower Robe', :category_id => categories_hash['Clothes'].id)       
Item.create(:name => 'House Robe',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Ties',:category_id => categories_hash['Clothes'].id)
Item.create(:name => 'Belts',:category_id => categories_hash['Clothes'].id)

Item.create(:name => 'Dress Shoes', :category_id => categories_hash['Shoes'].id)       
Item.create(:name => 'Stilettos',:category_id => categories_hash['Shoes'].id)
Item.create(:name => 'Pumps', :category_id => categories_hash['Shoes'].id)
Item.create(:name => 'Sandals',:category_id => categories_hash['Shoes'].id)
Item.create(:name => 'Flip-Flops', :category_id => categories_hash['Shoes'].id)
Item.create(:name => 'Flats', :category_id => categories_hash['Shoes'].id)   
Item.create(:name => 'Running Shoes/Sneakers',:category_id => categories_hash['Shoes'].id)    
Item.create(:name => 'Walking Shoes',:category_id => categories_hash['Shoes'].id)
Item.create(:name => 'Slippers',:category_id => categories_hash['Shoes'].id)        
Item.create(:name => 'Wedge Heel',:category_id => categories_hash['Shoes'].id)
Item.create(:name => 'Open-Toe Shoes',:category_id => categories_hash['Shoes'].id)
Item.create(:name => 'Boat Shoes',:category_id => categories_hash['Shoes'].id)
Item.create(:name => 'Ankle Boots', :category_id => categories_hash['Shoes'].id)

Item.create(:name => 'Cellphone', :category_id => categories_hash['Gadgets'].id)       
Item.create(:name => 'Cellphone Charger',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'Laptop',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'Laptop Charger',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'Tablet', :category_id => categories_hash['Gadgets'].id) 
Item.create(:name => 'Tablet Charger', :category_id => categories_hash['Gadgets'].id)       
Item.create(:name => 'e-Reader',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'e-Reader Charger',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'PDA',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'PDA Charger', :category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'Camera', :category_id => categories_hash['Gadgets'].id)       
Item.create(:name => 'Camera Charger',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'Memory Card',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'Converters & Adapters',:category_id => categories_hash['Gadgets'].id)
Item.create(:name => 'GPS', :category_id => categories_hash['Gadgets'].id) 
Item.create(:name => 'Audio Players', :category_id => categories_hash['Gadgets'].id)       
Item.create(:name => 'Headphones',:category_id => categories_hash['Gadgets'].id)

Item.create(:name => 'Spring Jacket', :category_id => categories_hash['Weather Related'].id)  
Item.create(:name => 'Umbrella',:category_id => categories_hash['Weather Related'].id)            
Item.create(:name => 'Raincoat',:category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Shawl',:category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Winter Coat',:category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Gloves',:category_id => categories_hash['Weather Related'].id) 
Item.create(:name => 'Hats', :category_id => categories_hash['Weather Related'].id)       
Item.create(:name => 'Scarves',:category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Boots',:category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Swimsuits',:category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Beach Cover-Up',:category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Beach Sarong', :category_id => categories_hash['Weather Related'].id) 
Item.create(:name => 'Sunglasses', :category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Sunscreen',:category_id => categories_hash['Weather Related'].id)
Item.create(:name => 'Bug Spray', :category_id => categories_hash['Weather Related'].id) 
Item.create(:name => 'AfterBurn', :category_id => categories_hash['Weather Related'].id)

Item.create(:name => 'Reading Material',:category_id => categories_hash['Travel Aids'].id)
Item.create(:name => 'Earplugs',:category_id => categories_hash['Travel Aids'].id)
Item.create(:name => 'Sleeping Mask', :category_id => categories_hash['Travel Aids'].id) 
Item.create(:name => 'Travel Pillow', :category_id => categories_hash['Travel Aids'].id)       
Item.create(:name => 'Travel Blanket',:category_id => categories_hash['Travel Aids'].id)
Item.create(:name => 'Motion-Sickness Meds',:category_id => categories_hash['Travel Aids'].id)
Item.create(:name => 'Suitcase Locks & Keys',:category_id => categories_hash['Travel Aids'].id)
Item.create(:name => 'Luggage Tags', :category_id => categories_hash['Travel Aids'].id)
Item.create(:name => 'Snacks',:category_id => categories_hash['Travel Aids'].id)


Item.create(:name => 'Passport', :category_id => categories_hash['Documents & Ids'].id)       
Item.create(:name => 'Visiting Visa',:category_id => categories_hash['Documents & Ids'].id)
Item.create(:name => 'Drivers License',:category_id => categories_hash['Documents & Ids'].id)
Item.create(:name => 'Flight Confirmation',:category_id => categories_hash['Documents & Ids'].id)
Item.create(:name => 'Hotel Confirmation', :category_id => categories_hash['Documents & Ids'].id) 
Item.create(:name => 'Foreign Currency', :category_id => categories_hash['Documents & Ids'].id)       
Item.create(:name => 'City Guides',:category_id => categories_hash['Documents & Ids'].id)
Item.create(:name => 'Language Guides',:category_id => categories_hash['Documents & Ids'].id)
Item.create(:name => 'Travel Insurance',:category_id => categories_hash['Documents & Ids'].id)
Item.create(:name => 'Medical Insurance Card', :category_id => categories_hash['Documents & Ids'].id) 
Item.create(:name => 'Int. Vaccination Card', :category_id => categories_hash['Documents & Ids'].id)  

Item.create(:name => 'Medication',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Vitamins',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Pain Relievers',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Mouth Guard', :category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Eye Glasses', :category_id => categories_hash['Miscellaneous'].id)       
Item.create(:name => 'Cane',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Gifts',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Travel Belt',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Stain Remover', :category_id => categories_hash['Miscellaneous'].id) 
Item.create(:name => 'Wallet', :category_id => categories_hash['Miscellaneous'].id)       
Item.create(:name => 'Address Book',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Pack of Gum',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Pens',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Safety Pins', :category_id => categories_hash['Miscellaneous'].id) 
Item.create(:name => 'House Keys', :category_id => categories_hash['Miscellaneous'].id)       
Item.create(:name => 'Nail Polish',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Nail Polish Remover',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Nail Filer',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Purses', :category_id => categories_hash['Miscellaneous'].id) 
Item.create(:name => 'Necklaces', :category_id => categories_hash['Miscellaneous'].id)       
Item.create(:name => 'Earrings',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Bracelets',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Rings',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Make-Up', :category_id => categories_hash['Miscellaneous'].id) 
Item.create(:name => 'Make-Up Remover', :category_id => categories_hash['Miscellaneous'].id)       
Item.create(:name => 'Lipstick',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Lip Liner',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Lip Treatment',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Lip Gloss', :category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Eye Liner', :category_id => categories_hash['Miscellaneous'].id)       
Item.create(:name => 'Mascara',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Eye-Shadow',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Blush',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Concealer', :category_id => categories_hash['Miscellaneous'].id) 
Item.create(:name => 'Foundation', :category_id => categories_hash['Miscellaneous'].id)       
Item.create(:name => 'Bronzer',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Primer',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Powder',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Eyelashes', :category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Brush Set', :category_id => categories_hash['Miscellaneous'].id)       
Item.create(:name => 'Make-Up Sponges',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Hair Rollers',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Hair Pins',:category_id => categories_hash['Miscellaneous'].id)
Item.create(:name => 'Hair Straightener', :category_id => categories_hash['Miscellaneous'].id)

Item.create(:name => 'Carry-On', :category_id => categories_hash['Luggage'].id)       
Item.create(:name => 'Large Purse',:category_id => categories_hash['Luggage'].id)
Item.create(:name => 'Backpack',:category_id => categories_hash['Luggage'].id)
Item.create(:name => 'Laptop Bag',:category_id => categories_hash['Luggage'].id)
Item.create(:name => 'Small-Sized Suitcase', :category_id => categories_hash['Luggage'].id)  
Item.create(:name => 'Medium-Sized Suitcase', :category_id => categories_hash['Luggage'].id)       
Item.create(:name => 'Large-Sized Suitcase',:category_id => categories_hash['Luggage'].id)
Item.create(:name => 'Ex-Large-Sized Suitcase',:category_id => categories_hash['Luggage'].id)




