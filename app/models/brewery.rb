class Brewery < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
  validates :image, presence: true

  def self.search(search, id)
  if search
    where(['brewery_name LIKE ?', "%#{search}%"])
  else
    self.all
  end
  end
	
end
