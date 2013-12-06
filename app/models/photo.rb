class Photo < ActiveRecord::Base
	has_many :comments
	
	has_and_belongs_to_many :tags

	has_attached_file :image,
                    styles: { medium: "400x400>", thumb: "200x200>" }
    validates :title, presence: true,
                    length: { minimum: 5 }


  def tag_names
    ''
  end

  def tag_names=(tags_string)
    tags_string.split(' ').each do |tag|
    	self.tags << Tag.create(name: tag)
    end
  end
        
end
