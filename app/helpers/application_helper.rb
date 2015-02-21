module ApplicationHelper

	def bodyclass(controller)
		if current_page?('/')
			front = "front"
		else
			front = "not-front"
		end

		if user_signed_in?
			session ="logged-in"
		else
			session ="not-logged-in"
		end

		return (controller.controller_name+" "+controller.action_name+" "+front+" "+session)		
	end

	def editable
		if user_signed_in?
			return ("editable")
		end
	end

	def front
		 return current_page?('/')
	end

	def new_contact
	  Contact.new    
	end
		
			


end
