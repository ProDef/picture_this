class Profile < ActiveRecord::Base

	belongs_to :user
	delegate :followers, :followed_users, :to => :users

end
