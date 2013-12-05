class Photo < ActiveRecord::Base

	has_and_belongs_to_many :tags

	has_attached_file :image,
                    styles: { medium: "400x400>", thumb: "200x200>" }


  def tag_names
    ''
  end

  def tag_names=(tags_string)
    tags_string.split(' ').each do |tag|
    	self.tags << Tag.create(name: tag)
    end
  end
        


end
