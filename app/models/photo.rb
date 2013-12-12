class Photo < ActiveRecord::Base

  belongs_to :user
  has_many :favourite_photos, dependent: :destroy
  has_many :favourites, through: :favourite_photos, source: :user

	has_many :comments
	
	has_and_belongs_to_many :tags

	has_attached_file :image,
                    styles: { medium: "400x400#", thumb: "200x200#" }
    validates :title, presence: true,
                    length: { minimum: 5, message: "Title must be at least 5 characters" }
    validates :image, attachment_presence: { message: 'Need a photo' }


  def tag_names
    ''
  end

  def tag_names=(tags_string)
    tags_string.split(' ').each do |tag|
    	      new_tag = Tag.find_or_create_by(name: tag)
            new_tag.slug = new_tag.name.gsub('#', '').downcase
            new_tag.save
            self.tags << new_tag
    end
  end
  
end
