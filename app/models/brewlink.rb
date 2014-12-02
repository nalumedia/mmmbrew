class Brewlink < ActiveRecord::Base
	 has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
        validates :image, presence: true
        validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }

end
