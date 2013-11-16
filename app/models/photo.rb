class Photo < ActiveRecord::Base
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	acts_as_taggable
end
