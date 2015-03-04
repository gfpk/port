class Work < ActiveRecord::Base
	
	mount_uploader :main_image, MainImageUploader
	mount_uploader :head_image, HeadImageUploader

	def prev
	  self.class.where(['"index" < ?',index]).last
	end

	def next
	  self.class.where(['"index" > ?',index]).first
	end

end
