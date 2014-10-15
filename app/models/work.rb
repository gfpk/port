class Work < ActiveRecord::Base
	
	mount_uploader :main_image, MainImageUploader
	mount_uploader :head_image, HeadImageUploader


end
