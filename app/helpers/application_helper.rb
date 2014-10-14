module ApplicationHelper

	def bodyclass(controller)
		if current_page?('/')
			front = "front"
		else
			front = "not-front"
		end

		return (controller.controller_name+" "+controller.action_name+" "+front)		
	end

	def front
		 return current_page?('/')
	end
			


end
