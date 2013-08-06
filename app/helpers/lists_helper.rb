module ListsHelper
	def set_active
		provide :active do
		"active"
		end
	end

	def set_time
 		Time.now.strftime("%m/%d/%Y")
 	end
end

