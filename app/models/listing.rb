class Listing < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "missing.png",
	:storage => :dropbox,
	:dropbox_credentials => Rails.root.join("config/dropbox.yml")
	
	validates_attachment :image,
	content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
