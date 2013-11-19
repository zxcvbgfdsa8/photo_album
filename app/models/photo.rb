class Photo < ActiveRecord::Base
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	acts_as_taggable

	after_photo_post_process :load_exif

	def load_exif
	  exif = EXIFR::JPEG.new(photo.queued_for_write[:original].path)
		return if exif.nil? or not exif.exif?
		self.date_taken = exif.date_time_original.to_date				
	end
end
